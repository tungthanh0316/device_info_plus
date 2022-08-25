library device_info;

import 'package:flutter/services.dart';

class DeviceInfo {
  static Future<String> getDeviceName() async {
    MethodChannel channel = const MethodChannel('methodChanel');
    String deviceName = '=>>';
    try {
      deviceName = await channel.invokeMethod('getDeviceName');
      print('deviceName: $deviceName');
    } catch (e) {
      print(e);
    }

    return deviceName;
  }
}
