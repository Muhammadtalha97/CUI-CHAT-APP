import 'package:cui_chat/Widget/PrimaryButton.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const TextField(
          decoration:
              InputDecoration(hintText: 'Name', prefixIcon: Icon(Icons.person)),
        ),
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
                ontap: () {}, btnName: 'SIGN UP', icon: Icons.lock_open_sharp),
          ],
        )
      ],
    );
  }
}
