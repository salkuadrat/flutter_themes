import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class OrangeTheme extends MyTheme {
  OrangeTheme() : super(
    id: ORANGE,
    name: ORANGE.toUpperCase(),
    primarySwatch: Colors.orange,
    backgroundColor: Colors.orange[400]!,
    navbarColor: Colors.orange[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.orange,
  );
}