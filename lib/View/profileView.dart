import 'package:cofffecup/ViewModel/profileVM.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=> ProfileVm(), builder: (context,viewModel,child){
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [

            ],
          ),
        ),
      );
    });
  }
}
