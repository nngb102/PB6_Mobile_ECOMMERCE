import 'package:flutter/material.dart';

class AppColors {
  const AppColors({
    required this.background,
    required this.surface,
    required this.accent,
    required this.text,
  });

  final Color background;
  final Color surface;
  final Color accent;
  final Color text;

  static const backgroundReceiveMessage = Color(0xFFEBF1F7);
  static const backgroundSendMessage = Color(0xFFBDDDFF);
  static const primary = Color(0xFFF1F1F1);
  static const secondary = Color(0xFFDEE1E6);
  static const white = Color(0xFFFAFAFA);
  static const black = Colors.black;
  static const grey = Color(0xFFC5C6D0);
  static const blue = Colors.blue;
  static const red = Color(0xFF001E38);
  static const greyLight = Color(0xFFF0F0F0);
  static const notInterNet = Color(0xFFE2D0B4);
  static const yellowColor = Colors.yellow;
  static const defaultIconFavoriteColor = Color(0xFFC1AEA6);
  static const defaultIconStarColor = Color(0xFFC4C4C4);
  static const greyFillR = Color(0xFFDCDCDC);
   static const greyTextL = Color(0xFFAEAEAE);

  //splash
  static const mainText = Color(0xFF2A2A37);
}

const colorsLight = AppColors(
  background: Colors.white,
  surface: Colors.white,
  accent: Colors.blueAccent,
  text: Colors.black,
);

const colorsDark = AppColors(
  background: Colors.black54,
  surface: Color(0xFF222222),
  accent: Colors.lightBlueAccent,
  text: Colors.white,
);

extension AppColorsExtension on BuildContext {
  AppColors get colors {
    final brightness = Theme.of(this).brightness;
    switch (brightness) {
      case Brightness.light:
        return colorsLight;
      case Brightness.dark:
        return colorsDark;
    }
  }
}
