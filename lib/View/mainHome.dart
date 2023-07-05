import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/Providers/DrawerMenu.dart';
import 'package:cofffecup/ViewModel/mainHomeVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class MainHomeMenu extends StatelessWidget {
  MainHomeMenu({Key? key,required this.userData}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  dynamic userData;


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=> HomeScreenVM(), builder: (context, viewModel, child){
      return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          width: double.infinity,
          backgroundColor: Colors.red,

          child:Container(
            color: Colors.white,
            child: DrawerWidegts(context,viewModel.Logout),
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(25),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                TopBarScreen(userData, _scaffoldKey),
                const SizedBox(height: 25,),
                Container(
                    width: 600,
                    height: 300,
                    child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: FeaturedCoffees()
                    )
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}


Widget FeaturedCoffees(){
  return Row(
    children: [
      Container(
        width: 206,
        height: 270,
        margin: EdgeInsets.only(right: 10),
        color: AppInformation.primaryColor,
        child: Container(
          child: Stack(
            children: [
              Positioned(child: Image(image: AssetImage('assets/images/icecoffee.png'),),left: 15,),
              Positioned(child: Image(image: AssetImage('assets/images/icecoffee.png'),),left: 15,)
            ],
          ),
        ),
      ),

    ],
  );
}




Widget TopBarScreen(dynamic userData,key){
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome",style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize:15,
          ),),

          Text("${userData?.displayName}",style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize:20,
              fontWeight: FontWeight.w600
          ),),
        ],
      ),
      Container(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(image: AssetImage('assets/images/cart.png')),
            GestureDetector(
                onTap: (){
                  key.currentState!.openDrawer();
                },
                child: const Image(image: AssetImage('assets/images/navigation.png'))
            ),
          ],
        ),
      )
    ],
  );
}

