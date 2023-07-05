// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cofffecup/View/InfoView.dart' as _i3;
import 'package:cofffecup/View/mainHome.dart' as _i5;
import 'package:cofffecup/View/SocialLoginView.dart' as _i4;
import 'package:cofffecup/View/SplashView.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i8;

class Routes {
  static const splashView = '/';

  static const infoView = '/info-view';

  static const socialLoginView = '/social-login-view';

  static const mainHomeMenu = '/main-home-menu';

  static const all = <String>{
    splashView,
    infoView,
    socialLoginView,
    mainHomeMenu,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.infoView,
      page: _i3.InfoView,
    ),
    _i1.RouteDef(
      Routes.socialLoginView,
      page: _i4.SocialLoginView,
    ),
    _i1.RouteDef(
      Routes.mainHomeMenu,
      page: _i5.MainHomeMenu,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.InfoView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.InfoView(),
        settings: data,
      );
    },
    _i4.SocialLoginView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SocialLoginView(),
        settings: data,
      );
    },
    _i5.MainHomeMenu: (data) {
      final args = data.getArgs<MainHomeMenuArguments>(nullOk: false);
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i5.MainHomeMenu(key: args.key, userData: args.userData),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class MainHomeMenuArguments {
  const MainHomeMenuArguments({
    this.key,
    required this.userData,
  });

  final _i7.Key? key;

  final dynamic userData;

  @override
  String toString() {
    return '{"key": "$key", "userData": "$userData"}';
  }

  @override
  bool operator ==(covariant MainHomeMenuArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.userData == userData;
  }

  @override
  int get hashCode {
    return key.hashCode ^ userData.hashCode;
  }
}

extension NavigatorStateExtension on _i8.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.infoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSocialLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.socialLoginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMainHomeMenu({
    _i7.Key? key,
    required dynamic userData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.mainHomeMenu,
        arguments: MainHomeMenuArguments(key: key, userData: userData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInfoView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.infoView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSocialLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.socialLoginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMainHomeMenu({
    _i7.Key? key,
    required dynamic userData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.mainHomeMenu,
        arguments: MainHomeMenuArguments(key: key, userData: userData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
