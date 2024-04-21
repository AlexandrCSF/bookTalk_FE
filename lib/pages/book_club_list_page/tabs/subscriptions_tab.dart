import 'package:auto_route/auto_route.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

import '../../../analytics/analytics.dart';
import '../../../navigation/app_router.dart';
import '../widgets/club_card.dart';

class SubscriptionsTab extends StatelessWidget {
  SubscriptionsTab({super.key});

  final Analytics analytics = Analytics(analytics: FirebaseAnalytics.instance);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ClubCard(
            onTap: () async {
              await analytics.openClubPage(index, 'name');
              context.router.navigate(BookClubRoute());
            },
          );
        },
      ),
    );
  }
}
