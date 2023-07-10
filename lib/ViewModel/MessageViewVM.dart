import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';

class MessageViewVM extends BaseViewModel{
   getMessages() {
     return FirebaseService.firestoreMessageRoom.snapshots();
   }
}