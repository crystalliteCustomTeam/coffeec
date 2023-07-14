import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:flutter/material.dart';

class Dialogs {
  static void customSnakBar(BuildContext context, String Content) {
    var errorMessage = Content;
    var snackBar = SnackBar(
      content: Text("${errorMessage}"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void customProgress(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const Center(child: CircularProgressIndicator()));
  }

  static void customDiaglog(BuildContext context, var ErrorMessage) {
    var errorMessage =
        (ErrorMessage.isNotEmpty) ? ErrorMessage : "Something Wrong";
    showDialog(
        context: context,
        builder: (_) => Scaffold(
              body: Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width:250,height:250,child: Image(image: AssetImage('assets/images/404.png'))),
                    SizedBox(height: 15,),
                    Text("$errorMessage"),
                    SizedBox(height: 15,),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    },style: ElevatedButton.styleFrom(
                      backgroundColor: AppInformation.primaryColor
                    ) ,child: Text("GO BACK"))
                  ],
                ),
              ),
            ));
  }
}
