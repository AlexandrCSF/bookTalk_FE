import 'package:booktalk_frontend/analytics/analytics.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/data/services/genre_client.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/registration_viewmodel.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
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

  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final String? accessToken = await secureStorage.read(key: 'accessToken');

      if (accessToken != null) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }

      return handler.next(options);
    },
  ));

  getIt.registerSingleton(dio);
  getIt.registerSingleton(secureStorage);
  getIt.registerSingleton(ClubClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(AuthClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(GenreClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(ClubRepository());
  getIt.registerSingleton(AuthRepository());

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
            ChangeNotifierProvider(
              create: (context) => RegistrationViewModel(),
            ),
          ],
          child: BookTalkApp(),
        ),
      ),
    ),
  );
}
