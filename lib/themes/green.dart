import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class GreenTheme extends MyTheme {
  GreenTheme() : super(
    id: GREEN,
    name: GREEN.toUpperCase(),
    primarySwatch: Colors.green,
    backgroundColor: Colors.green[400]!,
    navbarColor: Colors.green[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.green,
  );
}