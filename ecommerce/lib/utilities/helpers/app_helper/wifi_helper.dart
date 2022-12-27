import 'package:network_info_plus/network_info_plus.dart';

class WifiHelper {
  static Future<String> get ssid async =>
      ((await NetworkInfo().getWifiName()) ?? '').replaceAll('"', '');

  static Future<String> get bssid async =>
      (await NetworkInfo().getWifiBSSID()) ?? '';
}
