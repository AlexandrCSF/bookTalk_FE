import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/my_clubs_tab.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/recommendations_tab.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/subscriptions_tab.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/search_field.dart';

@RoutePage()
class BookClubListPage extends StatefulWidget {

  const BookClubListPage({super.key});

  @override
  State<BookClubListPage> createState() => _BookClubListPageState();
}

class _BookClubListPageState extends State<BookClubListPage> {

  late BookClubListViewModel provider;

  @override
  void initState() {
    provider = Provider.of<BookClubListViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    provider.getAdministratedList(1);
    provider.getSubscriptionList(1);
    provider.getRecommendationList(1);
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
        body: TabBarView(
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
