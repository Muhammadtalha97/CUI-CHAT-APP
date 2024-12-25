import 'package:cui_chat/Controller/AuthController.dart';
import 'package:cui_chat/Controller/ProfileController.dart';
import 'package:cui_chat/Pages/UserProfile/Widget/UserInfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    // ignore: unused_local_variable
    ProfileController profileController = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/updateProfilePage');
              },
              icon: const Icon(Icons.edit))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Userinfo(),
            const Spacer(), //work as justify between move item in bottom
            ElevatedButton(
                onPressed: () {
                  authController.logoutUser();
                },
                child: const Text('Log Out'))
          ],
        ),
      ),
    );
  }
}
