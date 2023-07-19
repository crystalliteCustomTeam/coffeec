import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/addFriendVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class AddFriend extends StatelessWidget {
  const AddFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController Name = TextEditingController();
    TextEditingController Phone = TextEditingController();
    return ViewModelBuilder.reactive(viewModelBuilder: ()=>AddFriendVm(), builder: (context, viewModel,child){
      var relation = viewModel.RelationStatus;
      return Scaffold(
        appBar: AppBar(
          title: const Text("Add Friend"),
          backgroundColor: AppInformation.primaryColor,
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: Name,
                decoration: const InputDecoration(
                  labelText: "Enter Name",
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: Phone,
                decoration: const InputDecoration(
                  labelText: "Enter Phone",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 15,),
              DropdownButton<String>(
                items: <String>['Friend', 'Work', 'Cafe Friend'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,style: GoogleFonts.poppins(
                      color: Colors.black
                    )),
                  );
                }).toList(),
                hint: Text("$relation"),
                onChanged: (value) {
                  viewModel.updateRelation(value);
                },
              ),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                viewModel.addFriendToFirebase(context,Name.text,Phone.text,relation);
              },style: ElevatedButton.styleFrom(
                backgroundColor: AppInformation.primaryColor
              ), child: Text("Add Friend",style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15
              ),))
            ],
          ),
        ),
      );
    });
  }
}
