import 'package:booktalk_frontend/analytics/analytics.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/data/services/genre_client.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
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
const String baseUrl = 'https://rererer';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt.registerSingleton<Analytics>(
      Analytics(analytics: FirebaseAnalytics.instance));

  Dio dio = Dio();

  dio.options.headers['Authorization'] = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI'
      '6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI3MzQ0MjY5LCJpYXQ'
      'iOjE3MTUyNDgyNjksImp0aSI6ImEwNzUyYzU0YzU4OTQ0YzA5YzI5YjkwZjQyZWZjYTM'
      'wIiwidXNlcl9pZCI6MX0.Isp4QGIMhss4CGriIsM4PwIV6_DQoTBt4rDcMHSVo9E';

  getIt.registerSingleton(dio);
  getIt.registerSingleton(ClubClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(AuthClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(GenreClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(ClubRepository());

  initializeDateFormatting().then(
    (_) => runApp(
      DevicePreview(
        enabled: kIsWeb,
        builder: (context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => BookClubListViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => BookClubViewModel(),
            ),
          ],
          child: BookTalkApp(),
        ),
      ),
    ),
  );
}
