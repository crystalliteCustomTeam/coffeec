import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/MessageViewVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class MessageView extends StatelessWidget {
  MessageView({Key? key, this.userName, this.userID}) : super(key: key);
  var userID;
  var userName;

  @override
  Widget build(BuildContext context) {
    TextEditingController messages = TextEditingController();
    ScrollController _scrollController = ScrollController();

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
                          stream: viewModel.getMessages(userID),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasError) {
                              return const Text('Something went wrong');
                            }

                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Text("Loading");
                            }

                            if (snapshot.hasData) {
                              late TextAlign tileAlign;
                              return ListView(
                                controller: _scrollController,
                                children:
                                    snapshot.data!.docs.map<Widget>((document) {
                                  Map data = document.data()! as Map;
                                  var myid = viewModel.getUserID();
                                  if (myid == data['user_id']) {
                                    tileAlign = TextAlign.right;
                                  } else {
                                    tileAlign = TextAlign.left;
                                  }
                                  return ListTile(
                                    title: Text("${data['message']}",
                                        softWrap: true,
                                        maxLines: 100,
                                        textAlign: tileAlign),
                                  );
                                }).toList(),
                              );
                            } else {
                              return Center(
                                child: Text("loading Messages"),
                              );
                            }
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
                              controller: messages,
                              maxLines: 100,
                              decoration: const InputDecoration(
                                hintText: "Type Message",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              viewModel.createMessage(messages.text, userID);
                              messages.clear();
                              Future.delayed(Duration(seconds: 1),(){
                                _scrollController.animateTo(
                                  _scrollController.position.maxScrollExtent + 100,
                                  curve: Curves.easeOut,
                                  duration: const Duration(milliseconds: 300),
                                );
                              });
                            },
                            child: const Icon(
                              Icons.send,
                              color: AppInformation.primaryColor,
                            ),
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
