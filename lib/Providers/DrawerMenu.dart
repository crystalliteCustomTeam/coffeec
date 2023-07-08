import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';



Widget DrawerMenu(context,viewModel){
  return Drawer(
    surfaceTintColor: Colors.red,
    width: MediaQuery.of(context).size.width * 0.9,
    backgroundColor: Colors.red,
    child: Container(
      color: Colors.white,
      child: DrawerWidegts(context, viewModel.Logout),
    ),
  );
}

Widget DrawerWidegts(context,logoutfunction){
  final navigationService = locator<NavigationService>();
  return Container(
    padding: EdgeInsets.all(25),
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/menubg.png"),
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomRight

        )
    ),
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(image: AssetImage('assets/images/surfacelogo.png')),
        const SizedBox(height: 55,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Main Menus",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 20
            ),),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: const Icon(Icons.cancel_rounded))
          ],
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.31,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(image: AssetImage('assets/images/home.png')),
            const SizedBox(width: 25,),
            Text("Home",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color(0xff309F5F)
            ),),

          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            const Image(image: AssetImage('assets/images/bagmenu.png')),
            const SizedBox(width: 25,),
            Text("My Orders",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xffBDBDBD)
            ),),

          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            const Image(image: AssetImage('assets/images/papermenu.png')),
            const SizedBox(width: 25,),
            Text("Transactions",style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color(0xffBDBDBD)
            ),),

          ],
        ),
        const SizedBox(height: 15,),
        GestureDetector(
          onTap: (){

            navigationService.navigateToChatView();
          },
          child: Row(
            children: [
              const Image(image: AssetImage('assets/images/profilemenu.png')),
              const SizedBox(width: 25,),
              Text("Friends",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xffBDBDBD)
              ),),

            ],
          ),
        ),
        const SizedBox(height: 15,),
        GestureDetector(
          onTap: (){
            var userData = FirebaseService.Auth.currentUser;
            navigationService.navigateToProfile(userData:userData);
          },
          child: Row(
            children: [
              const Image(image: AssetImage('assets/images/profilemenu.png')),
              const SizedBox(width: 25,),
              Text("Profile",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xffBDBDBD)
              ),),

            ],
          ),
        ),
        const SizedBox(height: 35,),
        GestureDetector(
          onTap: () async {
            await logoutfunction();
          },
          child: Row(
            children: [
              const Icon(Icons.power_settings_new,color:Colors.redAccent,size: 25),
              const SizedBox(width: 25,),
              Text("Logout",style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: const Color(0xffBDBDBD)
              ),),

            ],
          ),
        ),
        const SizedBox(height: 65,),
        Text("Ombe Coffee App",textAlign: TextAlign.left,style: GoogleFonts.poppins(
            fontSize: 18 ,
            fontWeight: FontWeight.normal,
            color: const Color(0xff868686)
        ),),
        Text("App Version 1.0.0 ",textAlign: TextAlign.left,style: GoogleFonts.poppins(
            fontSize: 12  ,
            fontWeight: FontWeight.normal,
            color: const Color(0xff868686)
        ),)
      ],
    ),
  );
}