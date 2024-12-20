import 'package:cui_chat_app/Config/PagePath.dart';
import 'package:cui_chat_app/Config/Themes.dart';
import 'package:cui_chat_app/Pages/Welcome/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CUI Chat App',
      theme: lightTheme,
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const Welcomepage(),
    );
  }
}
