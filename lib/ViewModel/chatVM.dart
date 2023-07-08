
import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:stacked/stacked.dart';

class chatViewVM extends BaseViewModel{

  fetchContactsFromFB() async {
    print(FirebaseService.firestoreContacts.get());
     return FirebaseService.firestoreContacts.get();
  }
}