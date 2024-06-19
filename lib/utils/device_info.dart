import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInformation {

  static Future<String> getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if(Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id;
    }
    return '';
  }

}