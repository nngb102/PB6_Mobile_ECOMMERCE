import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DeviceInfoHelper {
  DeviceInfoPlugin get deviceInfo => DeviceInfoPlugin();

  String get platform {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return 'android';
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ios';
    } else {
      return 'web';
    }
  }

  Future<String?> get platformVersion async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return (await deviceInfo.androidInfo).version.release;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return (await deviceInfo.iosInfo).systemVersion;
    }
    return 'unknown';
  }

  Future<String> get appVersion async => PackageInfo.fromPlatform()
      .then((packageInfo) => packageInfo.version
          .replaceAll('-production', '')
          .replaceAll('-staging', '')
          .replaceAll('-development', ''))
      .onError((error, stackTrace) => '0.0.0');

  Future<String?> get device async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return (await deviceInfo.androidInfo).model;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return (await deviceInfo.iosInfo).utsname.machine;
    }
    return 'unknown';
  }
}
