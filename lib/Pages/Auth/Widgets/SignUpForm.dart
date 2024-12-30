import '/Controller/AuthController.dart';
import '/Widget/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    AuthController authController = Get.put(AuthController());
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: name,
          decoration: const InputDecoration(
              hintText: 'Name', prefixIcon: Icon(Icons.person)),
        ),
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
                          authController.createUser(
                              email.text, password.text, name.text);
                        },
                        btnName: 'SIGNUP',
                        icon: Icons.lock_open_sharp),
                  ],
                ),
        ),
      ],
    );
  }
}
