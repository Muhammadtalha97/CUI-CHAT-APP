import 'package:flutter/material.dart';
import 'Widgets/WelcomeBody.dart';
import 'Widgets/WelcomeFooterButton.dart';
import 'Widgets/WelcomeHeading.dart';

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
