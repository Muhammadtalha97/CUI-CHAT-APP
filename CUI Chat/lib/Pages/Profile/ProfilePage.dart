import 'package:cui_chat/Pages/Profile/Widget/UserInfo.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [Userinfo()],
        ),
      ),
    );
  }
}
