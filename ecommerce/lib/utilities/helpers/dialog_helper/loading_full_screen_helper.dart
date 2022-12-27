import 'package:flutter/material.dart';

import '../../../injection/injector.dart';

import '../../../ui/widget/loading.dart';
import '../app_helper/navigator_global_context_helper.dart';

class LoadingFullScreenHelper {
  final _navigationService = injector.get<NavigatorGlobalContextHelper>();

  void showLoadingFullScreen({
    bool barrierDismissible = true,
    bool isUnLockWillPop = false,
  }) =>
      showDialog(
        barrierDismissible: barrierDismissible,
        context: _navigationService.getCurrentContext,
        builder: (context) => WillPopScope(
          onWillPop: () async => isUnLockWillPop,
          child: const Loading(),
        ),
      );

  void closeLoadingFullScreen() =>
      Navigator.of(_navigationService.getCurrentContext).pop();
}
