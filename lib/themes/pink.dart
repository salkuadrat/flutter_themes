import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class PinkTheme extends MyTheme {
  PinkTheme() : super(
    id: PINK,
    name: PINK.toUpperCase(),
    primarySwatch: Colors.pink,
    backgroundColor: Colors.pink[400]!,
    navbarColor: Colors.pink[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.pink,
  );
}