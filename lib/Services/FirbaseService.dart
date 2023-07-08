import 'dart:io';

import 'package:cofffecup/Providers/Dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {


  static final firestoreContacts = FirebaseFirestore.instance.collection('Contacts') ;

  static signInWithGoogle(context) async {

    try{
      await InternetAddress.lookup('google.com');
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      var result =  await FirebaseAuth.instance.signInWithCredential(credential);

      var username = "User Login Successfully";
      Dialogs.customSnakBar(context, "${username}");
      return result;
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



    static FirebaseAuth Auth = FirebaseAuth.instance;

}