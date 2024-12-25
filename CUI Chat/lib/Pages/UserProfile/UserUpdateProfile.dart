import 'package:cui_chat/Widget/PrimaryButton.dart';
import 'package:flutter/material.dart';

class UserUpdateProfile extends StatelessWidget {
  const UserUpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(100)),
                          child: const Center(
                            child: Icon(
                              Icons.photo,
                              size: 40,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Personal Info',
                              style: Theme.of(context).textTheme.labelMedium,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Name',
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: 'Talha Choudhary',
                              prefixIcon: Icon(Icons.person)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Email id',
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: 'example@gmail.com',
                              prefixIcon: Icon(Icons.email_rounded)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Phone Number',
                              style: Theme.of(context).textTheme.bodyMedium,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              hintText: '0300 1234567',
                              prefixIcon: Icon(Icons.phone)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PrimaryButton(
                                btnName: 'Save', icon: Icons.save, ontap: () {})
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
