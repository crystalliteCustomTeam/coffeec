import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/ProfileCreateVM.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class InforationCreateView extends StatelessWidget {
  const InforationCreateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController _phone = TextEditingController();

    return ViewModelBuilder.reactive(viewModelBuilder: ()=> InforationCreateVM(), builder: (context,viewModel,child){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Complete Profile"),
          centerTitle: true,
          backgroundColor: AppInformation.primaryColor,
        ),
        body:Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              TextField(
                controller: _phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Number",
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height:15),
              ElevatedButton(onPressed: (){
                viewModel.completeProfile(_phone.text,context);
              },style: ElevatedButton.styleFrom(
                backgroundColor: AppInformation.primaryColor
              ) ,child: Text("Complete Profile"))
            ],
          ),
        ),
      );
    });
  }
}
