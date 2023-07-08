import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/profileVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class Profile extends StatelessWidget {
  Profile({Key? key,required this.userData}) : super(key: key);

  var userData;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=> ProfileVm(), builder: (context,viewModel,child){
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 20,),
              ProfileTopBar(viewModel,context),
              const SizedBox(height: 35),
              ProfilePicture( userData),
              const SizedBox(height:15),
              NameTitle(userData),
              const SizedBox(height: 5,),
              CountryCity(),
              const SizedBox(height: 15,),

            ],
          ),
        ),
      );
    });
  }
}

Widget ProfileTopBar(viewModel,context){
  return Container(
    padding: EdgeInsets.all(25),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: (){
              viewModel.ProfileGoback(context);
            },
            child: const Icon(Icons.arrow_circle_left,size: 35,color: AppInformation.primaryColor,)),
        Text("Profile",style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),),
        const Icon(Icons.edit_outlined,size: 35,color: Colors.black,)
      ],
    ),
  );
}


Widget ProfilePicture(var ProfileData){
  return CircleAvatar(radius: 80,backgroundImage: NetworkImage(ProfileData.photoURL),);
}

Widget NameTitle(var ProfileData){
  return Text(ProfileData.displayName,style: GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w700
  ),);
}

Widget CountryCity(){
  return Text("London, England",style: GoogleFonts.poppins(
    fontSize: 16,
    color: AppInformation.primaryColor
  ),);
}

Widget MobileNumber(){
  return Container(
    color: Colors.black,
    padding: EdgeInsets.only(left: 25,right: 25),
    width: 450,
    height: 60,
    child: Row(
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 50,
                spreadRadius: 2
              )
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            Icons.phone,
            color: AppInformation.primaryColor,
          ),
        )
      ],
    ),
  );
}