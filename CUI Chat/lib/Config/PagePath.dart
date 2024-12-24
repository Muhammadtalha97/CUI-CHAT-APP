import 'package:cui_chat/Pages/Auth/AuthPage.dart';
import 'package:cui_chat/Pages/Chat/ChatPage.dart';
import 'package:cui_chat/Pages/Home/HomePage.dart';
import 'package:cui_chat/Pages/Profile/ProfilePage.dart';
import 'package:get/get.dart';

var pagePath = [
  GetPage(
      name: '/authPage',
      page: () => const AuthPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/homePage',
      page: () => const HomePage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/chatPage',
      page: () => const Chatpage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/profilePage',
      page: () => const ProfilePage(),
      transition: Transition.rightToLeft),
];
