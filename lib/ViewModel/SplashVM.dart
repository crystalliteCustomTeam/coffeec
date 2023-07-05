import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashVM extends BaseViewModel {
  final navigationService = locator<NavigationService>();



  navigateToInfo(){
    if(FirebaseAuth.instance.currentUser != null){
      navigationService.navigateToMainHomeMenu(userData: FirebaseAuth.instance.currentUser);
    }else{
      navigationService.navigateToInfoView();
    }

  }
}