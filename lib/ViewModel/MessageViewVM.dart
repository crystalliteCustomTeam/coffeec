import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';

class MessageViewVM extends BaseViewModel {
  getMessages(var userID) {
      return FirebaseService.firestoreMessageRoom
          .doc(userID)
          .collection('messages')
          .orderBy('timestamP',descending: false)
          .snapshots();
  }

  getUserID(){
    return FirebaseService.Auth.currentUser?.uid;
  }

  createMessage(var Message,var frID) async{
     await FirebaseService.CreateMessage(Message, frID);
  }
}
