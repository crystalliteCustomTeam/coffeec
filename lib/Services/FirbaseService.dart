import 'dart:io';

import 'package:cofffecup/Providers/Dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static final firestoreContacts =
      FirebaseFirestore.instance.collection('Contacts');

  static final firestoreChatRoom =
      FirebaseFirestore.instance.collection('chatRoom');

  static final firestoreMessageRoom =
      FirebaseFirestore.instance.collection('chatRoom');

  static CreateChatRoom(var frID) async {
    var roomID = frID + "_" + FirebaseAuth.instance.currentUser?.uid;
    var findRoom = await firestoreChatRoom.doc(roomID).get();
    if (findRoom.data() != null) {
      return "400";
    } else {
      return await firestoreChatRoom
          .doc(roomID)
          .set({
            'createdAt': DateTime.timestamp(),
            'lastMessage': '',
            'user_one': FirebaseAuth.instance.currentUser?.uid,
            'user_two': frID
          })
          .catchError((error) => print("Failed to add user: $error"));
    }
  }

  static CreateMessage(var message, var frID) async {
    var roomID = frID + "_" + FirebaseAuth.instance.currentUser?.uid;
    return await firestoreMessageRoom
        .doc(roomID)
        .collection('messages')
        .add({
          'message': message,
          'user_id': FirebaseAuth.instance.currentUser?.uid,
          'timestamP': DateTime.timestamp()
        })
        .catchError((error) => print(error));
  }

  static addContact(
    String name,
    String number,
    String email,
    String relation,
      context
  ) async {


    var _isValid = await firestoreContacts.where('Number',isEqualTo: number).get();
    if(_isValid.size == 0){

      Dialogs.customDiaglog( context, "Contact Don't Have Coffee Cup");
    }else{
      return firestoreContacts
          .add({
            "Email": email,
            "Name": name,
            "Number": number,
            "Relation": relation,
            "OwnerID": FirebaseAuth.instance.currentUser?.uid
          })
          .then((value) => true)
          .catchError((error) => print("Failed to add user: $error"));
    }


  }

  static signInWithGoogle(context) async {
    try {
      await InternetAddress.lookup('google.com');
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      var result = await FirebaseAuth.instance.signInWithCredential(credential);

      var username = "User Login Successfully";
      Dialogs.customSnakBar(context, "${username}");
      return result;
    } catch (e) {
      Dialogs.customSnakBar(context, "Something Went Wrong : ${e}");
      print(e);
    }
  }

  static signOutWithGoogle() async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
  }

  static FirebaseAuth Auth = FirebaseAuth.instance;
}
