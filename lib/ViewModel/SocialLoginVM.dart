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
    await FirebaseService.signInWithGoogle(context);
    navigationService.navigateToMainHomeMenu(userData: FirebaseAuth.instance.currentUser);
  }



}
