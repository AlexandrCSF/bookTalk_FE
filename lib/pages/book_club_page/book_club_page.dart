import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookClubPage extends StatelessWidget {
  const BookClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("book club page"),
    );
  }
}
