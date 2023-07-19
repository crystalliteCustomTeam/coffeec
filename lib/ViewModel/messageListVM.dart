import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MessageListVM extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  static  List updatedMessages = [];

  messages() {
    return FirebaseService.firestoreMessageRoom.snapshots();
  }


  getMessages(String Name,String friendID){
    navigationService.navigateToMessageView(userName: Name,userID: friendID,screen: 1);
  }

   var UserId = FirebaseService.Auth.currentUser?.uid;
}

