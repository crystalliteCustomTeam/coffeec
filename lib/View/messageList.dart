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
                        print(snapshot.data);
                        return ListView(
                          children: snapshot.data!.docs.map<Widget>((document) {
                            Map data = document.data()! as Map;
                            if(document.id ){
                              return ListTile(
                                  title: Text(
                                    "${data['user_two']}",
                                    softWrap: true,
                                    maxLines: 100,
                                  ));
                            }else{
                              return Text("s");
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
