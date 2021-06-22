import 'package:flutter/material.dart';

class MyTheme {
  final String id;
  final String name;
  final MaterialColor primarySwatch;
  final Color backgroundColor;
  final Color bodyColor;
  final Color displayColor;
  final Color navbarColor;
  final Color buttonColor;
  final Color buttonTextColor;
  final Brightness brightness;

  MyTheme({
    required this.id,
    required this.name,
    required this.primarySwatch,
    required this.backgroundColor,
    required this.navbarColor,
    required this.buttonColor,
    required this.buttonTextColor,
    this.bodyColor = Colors.white,
    this.displayColor = Colors.white,
    this.brightness = Brightness.dark,
  });
}