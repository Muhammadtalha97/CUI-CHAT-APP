import 'package:cui_chat_app/Pages/Auth/AuthPage.dart';
import 'package:get/get.dart';

var pagePath = [
  GetPage(
      name: '/authPage',
      page: () => const AuthPage(),
      transition: Transition.rightToLeft)
];
