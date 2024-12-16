import 'package:cui_chat_app/Pages/Welcome/Widgets/WelcomeBody.dart';
import 'package:cui_chat_app/Pages/Welcome/Widgets/WelcomeFooterButton.dart';
import 'package:cui_chat_app/Pages/Welcome/Widgets/WelcomeHeading.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [WelcomeHeading(), Welcomebody(), Welcomefooterbutton()],
        ),
      ),
    ));
  }
}
