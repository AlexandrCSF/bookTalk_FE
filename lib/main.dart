import 'package:booktalk_frontend/data/urls/base_url.dart';
import 'package:booktalk_frontend/viewmodels/edit_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/edit_profile_viewmodel.dart';
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
import 'package:booktalk_frontend/data/repositories/repositories.dart';
import 'package:booktalk_frontend/data/services/services.dart';
import 'package:booktalk_frontend/utils/analytics/analytics.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:booktalk_frontend/viewmodels/viewmodels.dart';
import 'firebase_options.dart';
import 'booktalk_app.dart';

final getIt = GetIt.instance;
const String baseUrl = BaseUrl.baseUrl;

Future<void> main() async {
  /// splash screen
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();

  /// firebase analytics
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  getIt.registerSingleton<Analytics>(
      Analytics(analytics: FirebaseAnalytics.instance));

  /// dio
  Dio dio = Dio();
  getIt.registerSingleton(dio);

  /// API services
  getIt.registerSingleton(ClubClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(AuthClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(GenreClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(MeetingClient(getIt.get<Dio>(), baseUrl: baseUrl));
  getIt.registerSingleton(
      ConversationClient(getIt.get<Dio>(), baseUrl: baseUrl));

  /// secure storage
  final secureStorage = SecureStorage();
  getIt.registerSingleton(secureStorage);

  /// repositories
  getIt.registerSingleton(ClubRepository());
  getIt.registerSingleton(MeetingRepository());
  getIt.registerSingleton(AuthRepository());
  getIt.registerSingleton(ConversationRepository());
  getIt.registerSingleton(GenreRepository());

  /// free token for unauthorized requests
  getIt.get<AuthRepository>().freeToken();

  /// data formatting
  initializeDateFormatting().then(
    (_) => runApp(
      DevicePreview(
        enabled: kIsWeb,

        /// multi provider
        builder: (context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => BookClubListViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => MyEventsViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => RegistrationViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => ProfileViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => AuthorizationViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => CreateClubViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => EditProfileViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => EditClubViewModel(),
            ),
            ChangeNotifierProvider(
              create: (context) => BookClubViewModel(),
            )
          ],
          child: BookTalkApp(),
        ),
      ),
    ),
  );
}
