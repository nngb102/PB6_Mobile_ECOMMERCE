import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../injection/injector.dart';
import '../app_helper/navigator_global_context_helper.dart';

enum TypeDialogPlatform {
  alert,
  confirm,
}
enum ActionDialogPlatform {
  cancel,
  ok,
}

class DialogPlatformHelper with ButtonDialogPlatform {
  DialogPlatformHelper({
    required this.content,
    this.title,
    this.type = TypeDialogPlatform.alert,
    this.btnOK = 'OK',
    this.btnCancel = 'CANCEL',
    this.paddingContentTop = 20,
    this.paddingContentBottom = 20,
    this.barrierDismissible = false,
    this.isUnLockWillPop = false,
  })  : assert(content != null),
        assert(
          content is Widget || content is String,
          'Param content must be of type Widget or String',
        );

  final String? title;
  final dynamic content;
  final TypeDialogPlatform type;
  final String btnOK, btnCancel;
  final double paddingContentTop, paddingContentBottom;
  final bool barrierDismissible, isUnLockWillPop;

  static final _navigationService =
      injector.get<NavigatorGlobalContextHelper>();

  Future<ActionDialogPlatform> show() async => await showDialog(
        context: _navigationService.getCurrentContext,
        barrierDismissible: barrierDismissible,
        builder: (context) => WillPopScope(
          onWillPop: () async => isUnLockWillPop,
          child: defaultTargetPlatform == TargetPlatform.android
              ? _androidPlatform(context)
              : _iosPlatform(context),
        ),
      );

  CupertinoAlertDialog _iosPlatform(BuildContext context) =>
      CupertinoAlertDialog(
        title: title == null
            ? null
            : Text(
                title!,
                textAlign: TextAlign.center,
              ),
        content: Padding(
          padding: EdgeInsets.only(
            top: paddingContentTop,
            bottom: paddingContentBottom,
          ),
          child: content is String ? Text(content) : content,
        ),
        actions: <Widget>[
          if (type == TypeDialogPlatform.confirm)
            cupertinoButtonCustom(
              context,
              txtButton: btnCancel,
              response: ActionDialogPlatform.cancel,
            ),
          cupertinoButtonCustom(
            context,
            txtButton: btnOK,
            response: ActionDialogPlatform.ok,
          ),
        ],
      );

  AlertDialog _androidPlatform(BuildContext context) => AlertDialog(
        title: title == null
            ? null
            : Text(
                title!,
                textAlign: TextAlign.center,
              ),
        content: Padding(
          padding: EdgeInsets.only(
            top: paddingContentTop,
            bottom: paddingContentBottom,
          ),
          child: content is String ? Text(content) : content,
        ),
        actions: <Widget>[
          if (type == TypeDialogPlatform.confirm)
            materialButtonCustom(
              context,
              txtButton: btnCancel,
              response: ActionDialogPlatform.cancel,
            ),
          materialButtonCustom(
            context,
            txtButton: btnOK,
            response: ActionDialogPlatform.ok,
          )
        ],
      );
}

mixin ButtonDialogPlatform {
  Widget materialButtonCustom(
    context, {
    required String txtButton,
    required ActionDialogPlatform response,
  }) =>
      TextButton(
        onPressed: () => Navigator.of(context).pop(response),
        child: Text(
          txtButton,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      );

  Widget cupertinoButtonCustom(
    context, {
    required String txtButton,
    required ActionDialogPlatform response,
  }) =>
      CupertinoDialogAction(
        onPressed: () => Navigator.of(context).pop(response),
        child: Text(
          txtButton,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      );
}
