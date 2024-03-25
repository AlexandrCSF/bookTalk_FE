import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'booktalk_app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kIsWeb,
      builder: (context) => BookTalkApp(),
    )
  );
}
