import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/my_clubs_tab.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/recommendations_tab.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/tabs/subscriptions_tab.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
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

  @override
  Widget build(BuildContext context) {
    BookClubListViewModel provider = Provider.of<BookClubListViewModel>(context, listen: false);
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    ProfileViewModel profileProvider = Provider.of<ProfileViewModel>(context);
    if(profileProvider.authorized) {
      provider.loadClubs();
      provider.authorize();
    } else {
      provider.unauthorize();
    }
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
