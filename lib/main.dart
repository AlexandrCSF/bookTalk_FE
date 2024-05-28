import 'package:booktalk_frontend/analytics/analytics.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/repositories/conversation_repository.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/data/services/conversation_client.dart';
import 'package:booktalk_frontend/data/services/genre_client.dart';
import 'package:booktalk_frontend/data/services/meeting_client.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/my_events_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
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
const String baseUrl = 'https://db4f-37-113-5-53.ngrok-free.app';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt.registerSingleton<Analytics>(
      Analytics(analytics: FirebaseAnalytics.instance));

  Dio dio = Dio();

  dio.options.headers['Authorization'] = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzI4NzY1NTA1LCJpYXQiOjE3MTY2Njk1MDUsImp0aSI6IjI3MDg4YThhNmJlMTQ0MjU5YzE1M2QxMDE2YjFkZDc0IiwidXNlcl9pZCI6M30.WVjDiShLhXOBK69MWHVizqNoqLs6S2THmg8Z_r0H72s';

  /*dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final String? accessToken = await secureStorage.read(key: 'accessToken');

      if (accessToken != null) {
        options.headers['Authorization'] = 'Bearer $accessToken';
      }

      return handler.next(options);
    },
  ));*/

  getIt.registerSingleton(dio);

  //final secureStorage = SecureStorage();

  //getIt.registerSingleton(secureStorage);
  getIt.registerSingleton(ClubClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(AuthClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(GenreClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(MeetingClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(ConversationClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(ClubRepository());
  getIt.registerSingleton(MeetingRepository());
  getIt.registerSingleton(AuthRepository());
  getIt.registerSingleton(ConversationRepository());

  initializeDateFormatting().then(
    (_) => runApp(
      DevicePreview(
        enabled: kIsWeb,
        builder: (context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => BookClubListViewModel(),
            ),
            /*ChangeNotifierProvider(
              create: (context) => BookClubViewModel(),
            ),*/
            ChangeNotifierProvider(
              create: (context) => MyEventsViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => RegistrationViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => ProfileViewModel(),
            ),
          ],
          child: BookTalkApp(),
        ),
      ),
    ),
  );
}
