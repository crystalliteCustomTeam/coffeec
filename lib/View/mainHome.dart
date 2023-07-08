import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/Providers/DrawerMenu.dart';
import 'package:cofffecup/ViewModel/mainHomeVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class MainHomeMenu extends StatelessWidget {
  MainHomeMenu({Key? key, required this.userData}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  dynamic userData;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeScreenVM(),
        builder: (context, viewModel, child) {
          return Scaffold(
            key: _scaffoldKey,
            drawer: DrawerMenu(context,viewModel),
            backgroundColor: Colors.white,
            body: Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TopBarScreen(userData, _scaffoldKey),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                        width: 600,
                        height: 300,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: FeaturedCoffees())),
                    const SizedBox(
                      height: 25,
                    ),
                    CategoryList(),
                    const SizedBox(
                      height: 25,
                    ),
                    FeaturedBeverages()
                  ],
                ),
              ),
            ),
          );
        });
  }
}


Widget CategoryList(){
  return Container(
    width: 600,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories",style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500
        ),),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 199,
                height: 85,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffEFEFEF),
                      spreadRadius: 1,
                      blurStyle: BlurStyle.normal,
                      blurRadius: 2,
                    )
                  ],
                  border: Border.all(color: Color(0xffEFEFEF)),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage('assets/images/teacup.png'),width: 24,height: 24,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Beverages",style: GoogleFonts.poppins(
                          color: Color(0xff1B1B1B),
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                        ),),
                        Text("41 Menus",style: GoogleFonts.poppins(
                            color: AppInformation.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 199,
                height: 85,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffEFEFEF),
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 2,
                      )
                    ],
                    border: Border.all(color: Color(0xffEFEFEF)),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage('assets/images/foods.png'),width: 24,height: 24,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Spicy",style: GoogleFonts.poppins(
                            color: Color(0xff1B1B1B),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                        Text("5 Menus",style: GoogleFonts.poppins(
                            color: AppInformation.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 199,
                height: 85,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffEFEFEF),
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 2,
                      )
                    ],
                    border: Border.all(color: Color(0xffEFEFEF)),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage('assets/images/icecreame.png'),width: 24,height: 24,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Ice creams",style: GoogleFonts.poppins(
                            color: Color(0xff1B1B1B),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                        Text("8 Menus",style: GoogleFonts.poppins(
                            color: AppInformation.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 199,
                height: 85,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffEFEFEF),
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 2,
                      )
                    ],
                    border: Border.all(color: Color(0xffEFEFEF)),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage('assets/images/cake.png'),width: 24,height: 24,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Desserts",style: GoogleFonts.poppins(
                            color: Color(0xff1B1B1B),
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),),
                        Text("18 Menus",style: GoogleFonts.poppins(
                            color: AppInformation.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget FeaturedCoffees() {
  return Row(
    children: [
      Container(
        width: 206,
        height: 270,
        margin: const EdgeInsets.only(right: 10),
        child: Container(
          child: Stack(
            children: [
              Positioned(
                top: 50.0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      color: AppInformation.primaryColor,
                      borderRadius: BorderRadius.circular(31)),
                ),
              ),
              const Positioned(
                left: 15,
                child: Image(
                  image: AssetImage('assets/images/icecoffee.png'),
                ),
              ),
              Positioned(
                top: 190,
                left: 20,
                child: Text(
                  "Creamy Ice Coffee",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                top: 210,
                left: 20,
                child: Text(
                  "\$ 5.8",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 206,
        height: 270,
        margin: const EdgeInsets.only(right: 10),
        child: Container(
          child: Stack(
            children: [
              Positioned(
                top: 50.0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      color: AppInformation.primaryColor,
                      borderRadius: BorderRadius.circular(31)),
                ),
              ),
              const Positioned(
                left: 15,
                child: Image(
                  image: AssetImage('assets/images/choco.png'),
                ),
              ),
              Positioned(
                top: 190,
                left: 20,
                child: Text(
                  "Choco Ice Coffee",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                top: 210,
                left: 20,
                child: Text(
                  "\$ 6.8",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
      Container(
        width: 206,
        height: 270,
        margin: const EdgeInsets.only(right: 10),
        child: Container(
          child: Stack(
            children: [
              Positioned(
                top: 50.0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 230,
                  decoration: BoxDecoration(
                      color: AppInformation.primaryColor,
                      borderRadius: BorderRadius.circular(31)),
                ),
              ),
              const Positioned(
                left: 15,
                child: Image(
                  image: AssetImage('assets/images/latte.png'),
                ),
              ),
              Positioned(
                top: 190,
                left: 20,
                child: Text(
                  "Latte",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                top: 210,
                left: 20,
                child: Text(
                  "\$ 8.85",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Widget TopBarScreen(dynamic userData, key) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          Text(
            "${userData?.displayName}",
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      Container(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(image: AssetImage('assets/images/cart.png')),
            GestureDetector(
                onTap: () {
                  key.currentState!.openDrawer();
                },
                child: const Image(
                    image: AssetImage('assets/images/navigation.png'))),
          ],
        ),
      )
    ],
  );
}


Widget FeaturedBeverages(){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Featured Beverages",style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),),
          Text("More",style: GoogleFonts.poppins(
              color: AppInformation.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w500
          ),)
        ],
      ),
      const SizedBox(height: 10),
      SizedBox(
        height: 300,
        width: 600,
        child: ListView(
          children:  [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 145,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image(
                            image: AssetImage('assets/images/p1.png'),
                            width: 112,
                            height: 131,
                          ),
                        ),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 69,
                            height: 28,
                            decoration: BoxDecoration(
                              color: Color(0xffFF8730),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.star,color: Colors.white,size: 16,),
                                Text("3.8",style: GoogleFonts.poppins(
                                  color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Hot Creamy Cappuccino Latte",softWrap: true,maxLines: 2,
                        overflow: TextOverflow.fade,style: GoogleFonts.poppins(
                            fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                      SizedBox(
                        width: 212,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$ 12.6",style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                            ),),
                            Text("50 Pts",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              color: AppInformation.primaryColor
                            ),),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 145,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image(
                            image: AssetImage('assets/images/icetea.png'),
                            width: 112,
                            height: 131,
                          ),
                        ),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 69,
                            height: 28,
                            decoration: BoxDecoration(
                                color: Color(0xffFF8730),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.star,color: Colors.white,size: 16,),
                                Text("4.8",style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Ice Tea With Fresh Leamons",softWrap: true,maxLines: 2,
                          overflow: TextOverflow.fade,style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      SizedBox(
                        width: 212,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$ 15.0",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                            ),),
                            Text("20 Pts",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: AppInformation.primaryColor
                            ),),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 145,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Image(
                            image: AssetImage('assets/images/mocha.png'),
                            width: 112,
                            height: 131,
                          ),
                        ),
                        Positioned(
                          left: 25,
                          bottom: 0,
                          child: Container(
                            width: 69,
                            height: 28,
                            decoration: BoxDecoration(
                                color: Color(0xffFF8730),
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.star,color: Colors.white,size: 16,),
                                Text("3.9",style: GoogleFonts.poppins(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Creamy Mocha With chocolate",softWrap: true,maxLines: 2,
                          overflow: TextOverflow.fade,style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600
                          ),),
                      ),
                      SizedBox(
                        width: 212,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$ 18.5",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                            ),),
                            Text("24 Pts",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: AppInformation.primaryColor
                            ),),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}
