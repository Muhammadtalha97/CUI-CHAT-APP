import 'package:chat_app/Pages/ContactPage/ContactPage.dart';
import 'package:get/get.dart';

import '../Pages/Auth/AuthPage.dart';
import '../Pages/Home/HomePage.dart';
import '../Pages/ProfilePage/ProfilePage.dart';
import '../Pages/UserProfile/UserProfilePage.dart';
import '../Pages/UserProfile/UserUpdateProfile.dart';

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
      name: '/userProfilePage',
      page: () => const UserProfilePage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/userUpdateProfilePage',
      page: () => const UserUpdateProfile(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/profilePage',
      page: () => const ProfilePage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: '/contactPage',
      page: () => const ContactPage(),
      transition: Transition.rightToLeft),
];
