import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class DarkTheme extends MyTheme {
  DarkTheme() : super(
    id: DARK,
    name: DARK.toUpperCase(),
    primarySwatch: Colors.grey,
    backgroundColor: Color(0xff212121),
    navbarColor: Colors.black,
    buttonColor: Colors.white,
    buttonTextColor: Colors.black,
  );
}