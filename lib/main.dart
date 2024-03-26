import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'booktalk_app.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(
    DevicePreview(
      enabled: kIsWeb,
      builder: (context) => BookTalkApp(),
    )
  ));
}
