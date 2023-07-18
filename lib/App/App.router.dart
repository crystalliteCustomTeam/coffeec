// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cofffecup/View/addFriend.dart' as _i9;
import 'package:cofffecup/View/chatView.dart' as _i7;
import 'package:cofffecup/View/InfoView.dart' as _i3;
import 'package:cofffecup/View/mainHome.dart' as _i5;
import 'package:cofffecup/View/messageList.dart' as _i11;
import 'package:cofffecup/View/MessageView.dart' as _i8;
import 'package:cofffecup/View/ProfileCreateView.dart' as _i10;
import 'package:cofffecup/View/profileView.dart' as _i6;
import 'package:cofffecup/View/SocialLoginView.dart' as _i4;
import 'package:cofffecup/View/SplashView.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i13;
import 'package:flutter/material.dart' as _i12;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i14;

class Routes {
  static const splashView = '/';

  static const infoView = '/info-view';

  static const socialLoginView = '/social-login-view';

  static const mainHomeMenu = '/main-home-menu';

  static const profile = '/Profile';

  static const chatView = '/chat-view';

  static const messageView = '/message-view';

  static const addFriend = '/add-friend';

  static const inforationCreateView = '/inforation-create-view';

  static const messageList = '/message-list';

  static const all = <String>{
    splashView,
    infoView,
    socialLoginView,
    mainHomeMenu,
    profile,
    chatView,
    messageView,
    addFriend,
    inforationCreateView,
    messageList,
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
    _i1.RouteDef(
      Routes.profile,
      page: _i6.Profile,
    ),
    _i1.RouteDef(
      Routes.chatView,
      page: _i7.ChatView,
    ),
    _i1.RouteDef(
      Routes.messageView,
      page: _i8.MessageView,
    ),
    _i1.RouteDef(
      Routes.addFriend,
      page: _i9.AddFriend,
    ),
    _i1.RouteDef(
      Routes.inforationCreateView,
      page: _i10.InforationCreateView,
    ),
    _i1.RouteDef(
      Routes.messageList,
      page: _i11.MessageList,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.InfoView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.InfoView(),
        settings: data,
      );
    },
    _i4.SocialLoginView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SocialLoginView(),
        settings: data,
      );
    },
    _i5.MainHomeMenu: (data) {
      final args = data.getArgs<MainHomeMenuArguments>(nullOk: false);
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i5.MainHomeMenu(key: args.key, userData: args.userData),
        settings: data,
      );
    },
    _i6.Profile: (data) {
      final args = data.getArgs<ProfileArguments>(nullOk: false);
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.Profile(key: args.key, userData: args.userData),
        settings: data,
      );
    },
    _i7.ChatView: (data) {
      final args = data.getArgs<ChatViewArguments>(
        orElse: () => const ChatViewArguments(),
      );
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.ChatView(key: args.key),
        settings: data,
      );
    },
    _i8.MessageView: (data) {
      final args = data.getArgs<MessageViewArguments>(
        orElse: () => const MessageViewArguments(),
      );
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.MessageView(
            key: args.key, userName: args.userName, userID: args.userID),
        settings: data,
      );
    },
    _i9.AddFriend: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.AddFriend(),
        settings: data,
      );
    },
    _i10.InforationCreateView: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.InforationCreateView(),
        settings: data,
      );
    },
    _i11.MessageList: (data) {
      return _i12.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.MessageList(),
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

  final _i13.Key? key;

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

class ProfileArguments {
  const ProfileArguments({
    this.key,
    required this.userData,
  });

  final _i13.Key? key;

  final dynamic userData;

  @override
  String toString() {
    return '{"key": "$key", "userData": "$userData"}';
  }

  @override
  bool operator ==(covariant ProfileArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.userData == userData;
  }

  @override
  int get hashCode {
    return key.hashCode ^ userData.hashCode;
  }
}

class ChatViewArguments {
  const ChatViewArguments({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant ChatViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class MessageViewArguments {
  const MessageViewArguments({
    this.key,
    this.userName,
    this.userID,
  });

  final _i13.Key? key;

  final dynamic userName;

  final dynamic userID;

  @override
  String toString() {
    return '{"key": "$key", "userName": "$userName", "userID": "$userID"}';
  }

  @override
  bool operator ==(covariant MessageViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.userName == userName &&
        other.userID == userID;
  }

  @override
  int get hashCode {
    return key.hashCode ^ userName.hashCode ^ userID.hashCode;
  }
}

extension NavigatorStateExtension on _i14.NavigationService {
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
    _i13.Key? key,
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

  Future<dynamic> navigateToProfile({
    _i13.Key? key,
    required dynamic userData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.profile,
        arguments: ProfileArguments(key: key, userData: userData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatView({
    _i13.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.chatView,
        arguments: ChatViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMessageView({
    _i13.Key? key,
    dynamic userName,
    dynamic userID,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.messageView,
        arguments:
            MessageViewArguments(key: key, userName: userName, userID: userID),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddFriend([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addFriend,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInforationCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.inforationCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMessageList([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.messageList,
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
    _i13.Key? key,
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

  Future<dynamic> replaceWithProfile({
    _i13.Key? key,
    required dynamic userData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.profile,
        arguments: ProfileArguments(key: key, userData: userData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatView({
    _i13.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.chatView,
        arguments: ChatViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMessageView({
    _i13.Key? key,
    dynamic userName,
    dynamic userID,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.messageView,
        arguments:
            MessageViewArguments(key: key, userName: userName, userID: userID),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddFriend([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addFriend,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInforationCreateView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.inforationCreateView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMessageList([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.messageList,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
