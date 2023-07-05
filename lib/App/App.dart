import 'package:cofffecup/Services/FirbaseService.dart';
import 'package:cofffecup/View/InfoView.dart';
import 'package:cofffecup/View/SocialLoginView.dart';
import 'package:cofffecup/View/SplashView.dart';
import 'package:cofffecup/View/mainHome.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView,initial: true),
  MaterialRoute(page: InfoView),
  MaterialRoute(page: SocialLoginView),
  MaterialRoute(page: MainHomeMenu)
],dependencies: [
  Singleton(
    classType: NavigationService
  ),
  LazySingleton(
    classType: FirebaseService
  )
])

class App{}