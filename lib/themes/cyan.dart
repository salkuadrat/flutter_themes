import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class CyanTheme extends MyTheme {
  CyanTheme() : super(
    id: CYAN,
    name: CYAN.toUpperCase(),
    primarySwatch: Colors.cyan,
    backgroundColor: Colors.cyan[400]!,
    navbarColor: Colors.cyan[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.cyan,
  );
}