import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData getAppTheme(Brightness brightness) {
  final colors = brightness == Brightness.light ? colorsLight : colorsDark;

  return ThemeData(
    brightness: brightness,
    scaffoldBackgroundColor: colors.background,
    appBarTheme: const AppBarTheme(),
  );
}
