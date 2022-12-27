import 'package:flutter/material.dart';

class NavigatorGlobalContextHelper {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext get getCurrentContext =>
      navigatorKey.currentState!.overlay!.context;
}
