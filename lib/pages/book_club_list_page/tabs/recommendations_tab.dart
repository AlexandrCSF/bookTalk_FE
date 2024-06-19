import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/my_events_page/widgets/info_text.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import '../../../utils/navigation/app_router.dart';
import 'package:flutter/material.dart';

import '../widgets/club_card.dart';

class RecommendationsTab extends StatefulWidget {
  RecommendationsTab({super.key});

  @override
  State<RecommendationsTab> createState() => _RecommendationsTabState();
}

class _RecommendationsTabState extends State<RecommendationsTab> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Consumer<BookClubListViewModel>(
        builder: (context, provider, child) {
          if (provider.authorized) {
            if (provider.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (provider.onError.isNotEmpty) {
                return Center(
                  child: Text(
                    provider.onError,
                    style: textTheme.headlineMedium
                        ?.copyWith(color: colors.outline),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: provider.recommendationList.length,
                  itemBuilder: (context, index) {
                    final club = provider.recommendationList[index];
                    return ClubCard(
                      title: club.name,
                      description: club.description,
                      members: club.numOfSubscribers ?? 0,
                      // todo: add image
                      imageUrl: '',
                      onTap: () {
                        context.router.navigate(BookClubRoute(id: club.id));
                      },
                    );
                  },
                );
              }
            }
          } else {
            return _unauthorizedRecommendations();
          }
        },
      ),
    );
  }

  Widget _unauthorizedRecommendations() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const InfoText(
          regularText:
          'Чтобы просматривать рекомендованные клубы, нужно ',
          boldText: 'войти или зарегистрироваться',
        ),
        MainPrimaryButton(
          label: 'Авторизоваться',
          icon: MdiIcons.arrowRight,
          onTap: () {
            context.navigateTo(
              ProfileTab(
                children: [
                  ProfileRoute(),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

}
