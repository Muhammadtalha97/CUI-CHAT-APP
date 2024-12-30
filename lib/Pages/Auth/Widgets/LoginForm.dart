import '/Controller/AuthController.dart';
import '/Widget/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    AuthController authController = Get.put(AuthController());
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: email,
          decoration: const InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.alternate_email_rounded)),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: password,
          decoration: const InputDecoration(
              hintText: 'Password', prefixIcon: Icon(Icons.password_outlined)),
        ),
        const SizedBox(
          height: 50,
        ),
        Obx(
          () => authController.isLoading.value
              ? const CircularProgressIndicator()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryButton(
                        ontap: () {
                          authController.login(email.text, password.text);
                          // Get.offAllNamed('/homePage');
                        },
                        btnName: 'LOGIN',
                        icon: Icons.lock_open_sharp),
                  ],
                ),
        ),
      ],
    );
  }
}
