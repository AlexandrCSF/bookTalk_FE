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
    );
  }
}
