import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:cofffecup/Providers/Dialog.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SocialLoginVM extends BaseViewModel{
  final navigationService = locator<NavigationService>();

  loginWithGoogle(context) async {
    Dialogs.customProgress(context);
    var response = await FirebaseService.signInWithGoogle(context);
    if(response != null){
      // navigationService.navigateToMainHomeMenu(userData: FirebaseAuth.instance.currentUser);
      navigationService.navigateToInforationCreateView();
    }

  }



}
