import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';

class MessageListVM extends BaseViewModel {
  static  List updatedMessages = [];
  messages() {

    var userID = FirebaseService.Auth.currentUser?.uid;
    return FirebaseService.firestoreMessageRoom.snapshots();


  }
}

