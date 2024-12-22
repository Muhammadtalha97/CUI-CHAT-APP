import 'package:cui_chat/Widget/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.alternate_email_rounded)),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          decoration: InputDecoration(
              hintText: 'Password', prefixIcon: Icon(Icons.password_outlined)),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
                ontap: () {
                  Get.offAllNamed('/homePage');
                },
                btnName: 'LOGIN',
                icon: Icons.lock_open_sharp),
          ],
        )
      ],
    );
  }
}
