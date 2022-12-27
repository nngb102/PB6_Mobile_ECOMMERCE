import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../injection/injector.dart';
import '../../utilities/helpers/error_helper/error_helper.dart';
import '../../utilities/helpers/logger_helper/logger_helper.dart';
import '../widget/loading.dart';
import 'base_page_mixin.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);
}

abstract class BasePageState<Page extends BasePage> extends State<Page>
    with BasePageMixin {
  final loggerHelper = injector.get<LoggerHelper>();
  final errorHelper = injector.get<ErrorHelper>();

  @override
  void initState() {
    super.initState();
    onInitState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      onStateCreated();
    });
  }

  @override
  void dispose() {
    onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: onWillPop,
        child: buildPage(context),
      );

Future<bool> onWillPop() async => true;

  @mustCallSuper
  void onInitState() {
    loggerHelper.info('Initializing state of [$runtimeType]');
  }

  @mustCallSuper
  void onStateCreated() {
    loggerHelper.info('State of [$runtimeType] is created');
  }

  @mustCallSuper
  void onDispose() {
    loggerHelper.info('Disposing [$runtimeType]');
  }

  void onError(Object? error) {
    if (error == null) {
      return;
    }
    errorHelper.handleError(error);
  }

  BuildContext? contextLoading;
  bool isShowLoading = false;

  void showProgressHud(BuildContext loadingContext) {
    if (!isShowLoading) {
      showDialog(
        context: loadingContext,
        builder: (context) {
          contextLoading = context;
          return const Loading();
        },
      );
      isShowLoading = true;
    }
  }

  Future<void> dismissProgressHud() async {
    if (contextLoading != null && isShowLoading) {
      await AutoRouter.of(contextLoading!).pop();
      isShowLoading = false;
    }
  }
}
