import 'package:booktalk_frontend/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:booktalk_frontend/utils/navigation/app_router.dart';

class BookTalkApp extends StatelessWidget {
  BookTalkApp({super.key});

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
