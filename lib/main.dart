import 'package:booktalk_frontend/analytics/analytics.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

import 'booktalk_app.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt.registerSingleton<Analytics>(
      Analytics(analytics: FirebaseAnalytics.instance));

  //Dio dio = Dio();
  /*getIt.registerSingleton(Dio());
  getIt.registerSingleton(ClubRepository());
  getIt.registerSingleton(ClubApiService(dio));*/

  initializeDateFormatting().then(
    (_) => runApp(
      DevicePreview(
        enabled: kIsWeb,
        builder: (context) => BookTalkApp(),
      ),
    ),
  );
}
