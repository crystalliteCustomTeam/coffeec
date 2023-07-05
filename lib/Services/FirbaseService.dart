import 'package:cofffecup/Providers/Dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {

  static signInWithGoogle(context) async {

    try{
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      var result =  await FirebaseAuth.instance.signInWithCredential(credential);
      var username = "USERNAME : ${result.additionalUserInfo?.profile?['given_name'] }";
      Dialogs.customSnakBar(context, "${username}");

    }
    catch(e){
      Dialogs.customSnakBar(context, "Something Went Wrong : ${e}");
      print(e);
    }

  }


  static signOutWithGoogle () async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  }

}