import 'package:cui_chat/Pages/Auth/AuthPage.dart';
import 'package:cui_chat/Pages/Chat/ChatPage.dart';
import 'package:cui_chat/Pages/Home/HomePage.dart';
import 'package:cui_chat/Pages/ProfilePage/ProfilePage.dart';
import 'package:cui_chat/Pages/UserProfile/UserProfilePage.dart';
import 'package:cui_chat/Pages/UserProfile/UserUpdateProfile.dart';
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
];
