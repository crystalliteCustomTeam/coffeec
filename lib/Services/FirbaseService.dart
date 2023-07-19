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

  static final firestoreUserReg =
      FirebaseFirestore.instance.collection('RegisterUser');
  static FirebaseAuth Auth = FirebaseAuth.instance;

  static RegisterUser(String phone, context) async {
    try {
      return await firestoreUserReg.doc(Auth.currentUser?.uid).set({
        "Name": Auth.currentUser?.displayName,
        "email": Auth.currentUser?.email,
        "phone": phone,
        "registerAt": DateTime.timestamp(),
        "status": "online"
      }).then((value) {
        var response = 200;
        return response;
      });
    } catch (e) {
      Dialogs.customSnakBar(context, "Something Went Wrong : ${e}");
    }
  }

  static SearchContact(var phone) async {
    return await firestoreUserReg
        .where('phone', isEqualTo: phone)
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        print(doc["Name"]);
      });
    });
  }

  static CreateChatRoom(var frID, var Name) async {
    var roomID = frID + "_" + FirebaseAuth.instance.currentUser?.uid;
    var findRoom = await firestoreChatRoom.doc(roomID).get();
    if (findRoom.data() != null) {
      return findRoom.id;
    } else {
       await firestoreChatRoom.doc(roomID).set({
        'createdAt': DateTime.timestamp(),
        'lastMessage': '',
        'sender': FirebaseAuth.instance.currentUser?.uid,
        'receiver': frID,
        'friend_name': Name.toString()
      }).catchError((error) => print("Failed to add user: $error"));
      return roomID;
    }
  }

  static CreateMessage(var message, var userID) async {

    await firestoreMessageRoom.doc(userID).update({
      'lastMessage': message,
      'createdAt': DateTime.timestamp()
    }).catchError((error) => print(error));

      return await firestoreMessageRoom.doc(userID).collection('messages').add({
        'message': message,
        'user_id': FirebaseAuth.instance.currentUser?.uid,
        'timestamP': DateTime.timestamp()
      }).catchError((error) => print(error));



  }

  static addContact(
      String name, String number, String relation, context) async {
    var _isValid =
        await firestoreUserReg.where('phone', isEqualTo: number).get();
    if (_isValid.size == 0) {
      Dialogs.customDiaglog(context, "Contact Don't Have Coffee Cup");
    } else {
      var friendAuthiD;
      await firestoreUserReg
          .where('phone', isEqualTo: number)
          .get()
          .then((QuerySnapshot querySnapsho) {
        querySnapsho.docs.forEach((doc) {
          friendAuthiD = doc.id;
        });
      });

      return await firestoreContacts
          .doc(await friendAuthiD)
          .set({
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
}
