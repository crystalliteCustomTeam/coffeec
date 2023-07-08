import 'package:cofffecup/Providers/AppProviders.dart';
import 'package:cofffecup/ViewModel/chatVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: ()=>chatViewVM(), builder: (context,viewModel,child){
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppInformation.primaryColor,
          onPressed: (){},
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: AppInformation.primaryColor,
          title: Text("Friends",style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(15),
          child: FetchContacts(viewModel,context)
        ),
      );
    });
  }
}

Widget FetchContacts(viewModel,context){
  return FutureBuilder(
    future: viewModel.fetchContactsFromFB(),
    builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context,index){
              return Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(

                  ),
                  child: Text("${snapshot.data.docs[index]['Name']}")
              );
            },
          );
        }
        else{
          return Center(
            child: Center(child: CircularProgressIndicator(),),
          );
        }
    },
  );
}