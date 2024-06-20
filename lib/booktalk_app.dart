import 'package:booktalk_frontend/pages/onboarding/welcome_view_page.dart';
import 'package:booktalk_frontend/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookTalkApp extends StatefulWidget {

  const BookTalkApp({super.key});

  @override
  State<BookTalkApp> createState() => _BookTalkAppState();
}

class _BookTalkAppState extends State<BookTalkApp> {

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: AppTheme.colorScheme(),
        textTheme: AppTheme.textTheme(),
      ),
    );
  }
}
