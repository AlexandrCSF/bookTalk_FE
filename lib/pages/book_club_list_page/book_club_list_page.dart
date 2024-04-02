import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/my_clubs_tab.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/recommendations_tab.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/subscriptions_tab.dart';
import 'package:flutter/material.dart';

import 'widgets/search_field.dart';

@RoutePage()
class BookClubListPage extends StatelessWidget {
  const BookClubListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colors.background,
          title: const SearchField(),
          bottom: TabBar(
            indicatorColor: colors.primary,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                child: Text(
                  'Я участник',
                  style: text.headlineMedium!.copyWith(color: colors.primary, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Рекомендации',
                  style: text.headlineMedium!.copyWith(color: colors.primary, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Я управляю',
                  style: text.headlineMedium!.copyWith(color: colors.primary, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SubscriptionsTab(),
            RecommendationsTab(),
            MyClubsTab(),
          ],
        ),
      ),
    );
  }
}
