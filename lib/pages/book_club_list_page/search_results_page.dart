import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/club_card.dart' as model;
import 'package:booktalk_frontend/pages/book_club_list_page/widgets/club_card.dart' as widget;
import 'package:booktalk_frontend/pages/book_club_list_page/widgets/search_field.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SearchResultsPage extends StatelessWidget {

  final List<model.ClubCard> result;

  const SearchResultsPage({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.background,
        title: const SearchField(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: ListView.builder(
          itemCount: result.length,
          itemBuilder: (context, index) {
            final club = result[index];
            return widget.ClubCard(
              title: club.name,
              description: club.description,
              members: club.numOfSubscribers ?? 0,
              imageUrl: club.picture,
              onTap: () {
                context.router.navigate(BookClubRoute(id: club.id));
              },
            );
          },
        ),
      ),
    );
  }
}
