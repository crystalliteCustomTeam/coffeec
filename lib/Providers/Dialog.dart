import 'package:flutter/material.dart';


class Dialogs {
  static void customSnakBar(BuildContext context , String Content){
    var errorMessage = Content;
    var snackBar = SnackBar(
      content: Text("${errorMessage}"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void customProgress(BuildContext context){
    showDialog(context: context, builder: (_)=> Center( child: CircularProgressIndicator()));
  }
}
