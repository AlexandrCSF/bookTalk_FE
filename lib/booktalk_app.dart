import 'package:booktalk_frontend/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class BookTalkApp extends StatelessWidget {
  const BookTalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
