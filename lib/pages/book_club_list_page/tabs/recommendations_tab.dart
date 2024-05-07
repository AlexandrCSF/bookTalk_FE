import 'package:auto_route/auto_route.dart';
import '../../../navigation/app_router.dart';
import 'package:flutter/material.dart';

import '../widgets/club_card.dart';

class RecommendationsTab extends StatelessWidget {
  RecommendationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return ClubCard(
            onTap: () {
              context.router.navigate(BookClubRoute());
            },
          );
        },
      ),
    );
  }
}
