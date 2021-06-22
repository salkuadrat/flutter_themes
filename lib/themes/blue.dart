import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class BlueTheme extends MyTheme {
  BlueTheme() : super(
    id: BLUE,
    name: BLUE.toUpperCase(),
    primarySwatch: Colors.blue,
    backgroundColor: Colors.blue[400]!,
    navbarColor: Colors.blue[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.blue,
  );
}