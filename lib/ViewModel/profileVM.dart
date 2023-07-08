import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileVm extends BaseViewModel{
  final navigationService = locator<NavigationService>();

   ProfileGoback(context){
     Navigator.pop(context);
   }

   profilePicture (){
     var userData = FirebaseService.Auth.currentUser;
     return userData;
   }
}