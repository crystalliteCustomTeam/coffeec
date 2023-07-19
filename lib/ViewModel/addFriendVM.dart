import 'package:cofffecup/App/App.locator.dart';
import 'package:cofffecup/App/App.router.dart';
import 'package:cofffecup/Providers/Dialog.dart';
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddFriendVm extends BaseViewModel{
  final navigationService = locator<NavigationService>();

  var RelationStatus = "Please Choose Relation";


  addFriendToFirebase(context,String name,String phone,String relation) async {
    var result = await FirebaseService.addContact(name, phone, relation,context);
    if(result){
      navigationService.navigateToChatView();
    }else{
      Dialogs.customSnakBar(context, "Something Error Found : ${result}");
    }
  }

  updateRelation(value){
    RelationStatus = value;
    rebuildUi();
  }
}