import 'themes/base.dart';
import 'themes/blue.dart';
import 'themes/brown.dart';
import 'themes/cyan.dart';
import 'themes/dark.dart';
import 'themes/green.dart';
import 'themes/indigo.dart';
import 'themes/light.dart';
import 'themes/lightblue.dart';
import 'themes/orange.dart';
import 'themes/pink.dart';
import 'themes/purple.dart';
import 'themes/red.dart';
import 'themes/teal.dart';

const LIGHT = 'light';
const DARK = 'dark';
const BLUE = 'blue';
const LIGHT_BLUE = 'light blue';
const TEAL = 'teal';
const INDIGO = 'indigo';
const PURPLE = 'purple';
const CYAN = 'cyan';
const RED = 'red';
const PINK = 'pink';
const ORANGE = 'orange';
const GREEN = 'green';
const BROWN = 'brown';

List<MyTheme> themes = [
  LightTheme(),
  DarkTheme(),
  BlueTheme(),
  LightBlueTheme(),
  TealTheme(),
  IndigoTheme(),
  PurpleTheme(),
  CyanTheme(),
  RedTheme(),
  PinkTheme(),
  OrangeTheme(),
  GreenTheme(),
  BrownTheme(),
];

MyTheme defaultTheme = LightTheme();