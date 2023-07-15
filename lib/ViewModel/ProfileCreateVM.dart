import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InforationCreateVM extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  completeProfile(String phone, context) async {
    var result = await FirebaseService.RegisterUser(phone, context);
    if (result == 200) {
      print("Working");
      navigationService.navigateToMainHomeMenu(
          userData: FirebaseAuth.instance.currentUser);
    }
  }
}
