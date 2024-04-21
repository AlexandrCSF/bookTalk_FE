import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/analytics/analytics.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import '../../../navigation/app_router.dart';
import 'package:flutter/material.dart';

import '../widgets/club_card.dart';

class RecommendationsTab extends StatelessWidget {
  RecommendationsTab({super.key});

  final Analytics analytics = Analytics(analytics: FirebaseAnalytics.instance);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return ClubCard(
            onTap: () async {
              /*await analytics.logEvent(
                name: 'open_club_page',
                parameters: {
                  "club_index": index,
                },
              );*/
              await analytics.openClubPage(index, 'name');
              context.router.navigate(BookClubRoute());
            },
          );
        },
      ),
    );
  }
}
