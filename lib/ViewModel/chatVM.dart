
import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class chatViewVM extends BaseViewModel{
  final navigationService = locator<NavigationService>();

   int initalScreen = 0;


   searchContact(phone){
     var result =  FirebaseService.SearchContact(phone);
     print(result);
   }

   changeScreen(int ScreenValue){
     initalScreen = ScreenValue;
     rebuildUi();
   }

  fetchContactsFromFB() async {
    print(FirebaseService.firestoreContacts.get());
     return FirebaseService.firestoreContacts.where('OwnerID',isEqualTo: FirebaseService.Auth.currentUser?.uid).get();
  }

  addFriend(){
      navigationService.navigateToAddFriend();
  }

  createOrUpdateChatRoom(var friendID,var Name ){
      var result  = FirebaseService.CreateChatRoom(friendID);
      navigationService.navigateToMessageView(userName: Name,userID: friendID);
  }
}