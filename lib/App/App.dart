import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:cofffecup/View/InfoView.dart';
import 'package:cofffecup/View/MessageView.dart';
import 'package:cofffecup/View/ProfileCreateView.dart';
import 'package:cofffecup/View/SocialLoginView.dart';
import 'package:cofffecup/View/SplashView.dart';
import 'package:cofffecup/View/addFriend.dart';
import 'package:cofffecup/View/chatView.dart';
import 'package:cofffecup/View/mainHome.dart';
import 'package:cofffecup/View/messageList.dart';
import 'package:cofffecup/View/profileView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView,initial: true),
  MaterialRoute(page: InfoView),
  MaterialRoute(page: SocialLoginView),
  MaterialRoute(page: MainHomeMenu),
  MaterialRoute(page: Profile),
  MaterialRoute(page: ChatView),
  MaterialRoute(page: MessageView),
  MaterialRoute(page: AddFriend),
  MaterialRoute(page: InforationCreateView),
  MaterialRoute(page: MessageList)

],dependencies: [
  Singleton(
    classType: NavigationService
  ),
  LazySingleton(
    classType: FirebaseService
  )
])

class App{}