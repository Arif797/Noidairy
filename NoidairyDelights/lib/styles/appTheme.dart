import 'package:flutter/material.dart';

class AppTheme {
  ThemeData commonAppTheme() {
    Map<int, Color> color = {
      100: Color.fromRGBO(0, 46, 93, 1),
    };
    MaterialColor myColor = MaterialColor(0xFF002e5d, color);

    return ThemeData(
      backgroundColor: Colors.white,
      primaryColor: Colors.red,
      accentColor: myColor,
      focusColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  ThemeData checkboxTheme() {
    return ThemeData(
      unselectedWidgetColor: Colors.transparent,
    );
  }
}
