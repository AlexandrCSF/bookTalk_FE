import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/navigation/app_router.dart';
import '../widgets/club_card.dart';

class SubscriptionsTab extends StatefulWidget {
  const SubscriptionsTab({super.key});

  @override
  State<SubscriptionsTab> createState() => _SubscriptionsTabState();
}

class _SubscriptionsTabState extends State<SubscriptionsTab> {

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Consumer<BookClubListViewModel>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (provider.onError.isNotEmpty) {
              return Center(
                child: Text(
                  provider.onError,
                  style:
                  textTheme.headlineMedium?.copyWith(color: colors.outline),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: provider.subscriptionList.length,
                itemBuilder: (context, index) {
                  final club = provider.subscriptionList[index];
                  return ClubCard(
                    title: club.name,
                    description: club.description,
                    // todo: add member count
                    members: 15,
                    // todo: and image
                    imageUrl: '',
                    onTap: () {
                      context.router.navigate(BookClubRoute(id: club.id));
                    },
                  );
                },
              );
            }
          }
        },
      ),
    );
  }

}
