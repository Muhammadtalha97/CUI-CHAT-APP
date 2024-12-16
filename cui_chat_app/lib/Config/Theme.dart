import 'package:cui_chat_app/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData();
var darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      primary: dPrimaryColor,
      onPrimary: dOnBackgroundColor,
      surface: dBackgroundColor,
      onSurface: dOnBackgroundColor,
      primaryContainer: dContainerColor,
      onPrimaryContainer: dOnContainerColor,
    ));
