import 'package:dio/dio.dart';

import '../dialog_helper/dialog_platform_helper.dart';

class ErrorHelper {
  ErrorHelper();

  void handleError(Object error) {
    if (error is DioError) {
      final response = error.response;
      DialogPlatformHelper(
        title: 'Message',
        content: response == null ? 'Unknown Error' : error.message,
      ).show();
    } else if (error is Exception) {
      DialogPlatformHelper(
        title: 'Message',
        content: error.toString(),
      ).show();
    }
  }
}
