import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class LightTheme extends MyTheme {
  LightTheme() : super(
    id: LIGHT,
    name: LIGHT.toUpperCase(),
    primarySwatch: Colors.lightBlue,
    backgroundColor: Colors.white,
    bodyColor: Colors.black,
    displayColor: Colors.black,
    brightness: Brightness.light,
    navbarColor: Colors.lightBlue[600]!,
    buttonColor: Colors.lightBlue,
    buttonTextColor: Colors.white,
  );
}