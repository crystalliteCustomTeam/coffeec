import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:cofffecup/ViewModel/messageListVM.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MessageList extends StatelessWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => MessageListVM(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Messages"),
              centerTitle: true,
              backgroundColor: AppInformation.primaryColor,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  padding: const EdgeInsets.all(15),
                  child: StreamBuilder(
                    stream: viewModel.messages(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasError) {
                        return const Text('Something went wrong');
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Text("Loading");
                      }

                      if (snapshot.hasData) {

                        return ListView(
                          children: snapshot.data!.docs.map<Widget>((document) {
                            Map data = document.data()! as Map;
                            String contactID = document.id;

                            var userId = viewModel.UserId;
                            if (contactID.contains(userId.toString())) {
                              var frName = data['friend_name'];
                              var frId = document.id;
                              return GestureDetector(
                                onTap: (){
                                    viewModel.getMessages(frName,frId);
                                },
                                child: ListTile(
                                    title: Text(
                                  "${data['friend_name']}".toUpperCase(),
                                  softWrap: true,
                                  maxLines: 100,
                                      style: TextStyle(fontSize: 18),
                                ),
                                subtitle: Text("${data['lastMessage']}"),
                                ),


                              );
                            } else {
                              return SizedBox();
                            }
                          }).toList(),
                        );
                      } else {
                        return const Center(
                          child: Text("Messages Not Found"),
                        );
                      }
                    },
                  )),
            ),
          );
        });
  }
}
