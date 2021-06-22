import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'themes.dart';
import 'themes/base.dart';

class ThemeState extends ChangeNotifier {
  MyTheme _theme = defaultTheme;

  MyTheme get theme => _theme;

  Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String themeId = prefs.getString('THEME') ?? defaultTheme.id;

    _theme = themes.firstWhere(
      (theme) => theme.id == themeId,
      orElse: () => defaultTheme,
    );
    notifyListeners();
  }

  Future<void> change(MyTheme theme) async {
    _theme = theme;
    notifyListeners();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('THEME', _theme.id);
  }
}
