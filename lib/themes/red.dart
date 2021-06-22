import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class RedTheme extends MyTheme {
  RedTheme() : super(
    id: RED,
    name: RED.toUpperCase(),
    primarySwatch: Colors.red,
    backgroundColor: Colors.red[400]!,
    navbarColor: Colors.red[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.red,
  );
}