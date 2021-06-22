import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class TealTheme extends MyTheme {
  TealTheme() : super(
    id: TEAL,
    name: TEAL.toUpperCase(),
    primarySwatch: Colors.teal,
    backgroundColor: Colors.teal[400]!,
    navbarColor: Colors.teal[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.teal,
  );
}