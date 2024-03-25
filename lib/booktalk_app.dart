import 'package:booktalk_frontend/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

import 'navigation/app_router.dart';

class BookTalkApp extends StatelessWidget {
  BookTalkApp({super.key});

  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router.config(),
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF904B3C),
            primary: const Color(0xFF904B3C),
            onPrimary: const Color(0xFFFFFFFF),
            background: const Color(0xFFFFF8F6),
            onBackground: const Color(0xFF231917),
            surface: const Color(0xFFFFF8F6),
            onSurface: const Color(0xFF231917),
            outline: const Color(0xFF85736F),
            outlineVariant: const Color(0xFFD8C2BD),
            inversePrimary: const Color(0xFFFFDAD3), //primary fixed
            onInverseSurface: const Color(0xFFFFEDE9),
            error: const Color(0xFFBA1A1A),
            onError: const Color(0xFFFFFFFF),
          )),
    );
  }
}
