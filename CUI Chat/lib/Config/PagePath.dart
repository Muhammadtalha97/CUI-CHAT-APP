import 'package:cui_chat/Pages/Auth/AuthPage.dart';
import 'package:cui_chat/Pages/HomePage/HomePage.dart';
import 'package:get/get.dart';

var pagePath = [
  GetPage(
      name: '/authPage',
      page: () => const AuthPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/homePage',
      page: () => const HomePage(),
      transition: Transition.rightToLeft)
];
