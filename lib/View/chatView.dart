import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/chatVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class ChatView extends StatelessWidget {
  ChatView({Key? key}) : super(key: key);
  TextEditingController _searchController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => chatViewVM(),
        builder: (context, viewModel, child) {
          int _selectedIndex = viewModel.initalScreen;
          List<Widget> _widgetOptions = <Widget>[
             FetchContacts(viewModel, context),
          ];

          return Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppInformation.primaryColor,
              onPressed: () {
                viewModel.addFriend();
              },
              child: Icon(Icons.add),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined),
                  label: 'Contacts',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline_sharp),
                  label: 'Chats',

                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: AppInformation.primaryColor,
              onTap: (value) {
                viewModel.changeScreen(value);
              },
            ),
            appBar: AppBar(
              backgroundColor: AppInformation.primaryColor,
              title: Text(
                "Friends",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
              centerTitle: true,
            ),
            body: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(15),
                child: _widgetOptions.elementAt(_selectedIndex),
            ),
          );
        });
  }
}

Widget FetchContacts(viewModel, context) {
  return FutureBuilder(
    future: viewModel.fetchContactsFromFB(),
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
          itemCount: snapshot.data.docs.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                var friendID = snapshot.data.docs[index].id;
                var Name = snapshot.data.docs[index]['Name'];
                viewModel.createOrUpdateChatRoom(friendID, Name);
              },
              child: Container(
                  margin: EdgeInsets.only(top: 3, bottom: 3),
                  width: double.infinity,
                  height: 90,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${snapshot.data.docs[index]['Name']}".toUpperCase(),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.message_outlined,
                        size: 35,
                        color: AppInformation.primaryColor,
                      )
                    ],
                  )),
            );
          },
        );
      } else {
        return Center(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    },
  );
}
