import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class LightBlueTheme extends MyTheme {
  LightBlueTheme() : super(
    id: LIGHT_BLUE,
    name: LIGHT_BLUE.toUpperCase(),
    primarySwatch: Colors.lightBlue,
    backgroundColor: Colors.lightBlue[400]!,
    navbarColor: Colors.lightBlue[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.lightBlue,
  );
}