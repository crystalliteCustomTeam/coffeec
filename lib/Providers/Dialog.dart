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
              body: Column(
                children: [
                  SizedBox(width:250,height:250,child: Image(image: AssetImage('assets/images/404.png'))),
                  Text("$errorMessage"),
                ],
              ),
            ));
  }
}
