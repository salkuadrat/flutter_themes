import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class BrownTheme extends MyTheme {
  BrownTheme() : super(
    id: BROWN,
    name: BROWN.toUpperCase(),
    primarySwatch: Colors.brown,
    backgroundColor: Colors.brown[400]!,
    navbarColor: Colors.brown[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.brown,
  );
}