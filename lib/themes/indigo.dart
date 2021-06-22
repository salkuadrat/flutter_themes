import 'package:flutter/material.dart';

import '../themes.dart';
import 'base.dart';

class IndigoTheme extends MyTheme {
  IndigoTheme() : super(
    id: INDIGO,
    name: INDIGO.toUpperCase(),
    primarySwatch: Colors.indigo,
    backgroundColor: Colors.indigo[400]!,
    navbarColor: Colors.indigo[600]!,
    buttonColor: Colors.white,
    buttonTextColor: Colors.indigo,
  );
}