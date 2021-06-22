import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class PurpleTheme extends MyTheme {
  PurpleTheme() : super(
    id: PURPLE,
    name: PURPLE.toUpperCase(),
    primarySwatch: Colors.purple,
    backgroundColor: Colors.purple[400]!,
    navbarColor: Colors.purple[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.purple,
  );
}