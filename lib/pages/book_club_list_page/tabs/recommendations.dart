import 'package:flutter/material.dart';

import '../widgets/club_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ClubCard();
      },
    );
  }
}
