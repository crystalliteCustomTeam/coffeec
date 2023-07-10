import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/MessageViewVM.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class MessageView extends StatelessWidget {
  MessageView({Key? key, this.userName}) : super(key: key);
  var userName;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => MessageViewVM(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: AppInformation.primaryColor,
              title: Text("${userName}".toUpperCase(),
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        padding: const EdgeInsets.all(15),
                        child: StreamBuilder(
                          stream: viewModel.getMessages(),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasError) {
                              return Text('Something went wrong');
                            }

                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Text("Loading");
                            }

                            return ListView(
                              children: snapshot.data!.docs.map((document) {
                                Map data = document.data()! as Map;
                                print(data['user_one']);
                                return ListTile(
                                  title: Text(data['user_one']),
                                  subtitle: Text(data['user_two']),
                                );
                              }).toList(),
                            );
                          },
                        )),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(30)),
                      width: 400,
                      height: 70,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 70,
                            child: TextField(
                              maxLines: 100,
                              decoration: InputDecoration(
                                hintText: "Type Message",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.send,
                            color: AppInformation.primaryColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
