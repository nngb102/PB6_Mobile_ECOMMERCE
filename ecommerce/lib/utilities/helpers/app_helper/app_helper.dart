import 'dart:async';

import 'package:flutter/material.dart';

class AppHelper {
  AppHelper();

  final _appLifeCycleState = StreamController<AppLifecycleState>.broadcast();

  Stream<AppLifecycleState> get appLifeCycleState => _appLifeCycleState.stream;

  void addAppLifecycleState(AppLifecycleState appLifecycleState) {
    _appLifeCycleState.add(appLifecycleState);
  }

  void close() {
    _appLifeCycleState.close();
  }
}
