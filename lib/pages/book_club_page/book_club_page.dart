import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookClubPage extends StatelessWidget {
  final int id;

  const BookClubPage({
    super.key,
    @PathParam('id') this.id = 1,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("book club page"),
    );
  }
}
