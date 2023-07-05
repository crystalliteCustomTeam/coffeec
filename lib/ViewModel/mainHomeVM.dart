import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeScreenVM extends BaseViewModel{
  final navigationService = locator<NavigationService>();

  Logout() async {
    await FirebaseService.signOutWithGoogle();
    navigationService.navigateToSocialLoginView();
  }

}