import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/my_events_page/widgets/info_text.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
                    style:
                    textTheme.headlineMedium?.copyWith(color: colors.outline),
                  ),
                );
              } else {
                if (provider.subscriptionList.isEmpty) {
                  return Center(child: Text('Список подписок пуст', style: textTheme.headlineMedium,),);
                } else {
                  return ListView.builder(
                    itemCount: provider.subscriptionList.length,
                    itemBuilder: (context, index) {
                      final club = provider.subscriptionList[index];
                      return ClubCard(
                        title: club.name,
                        description: club.description,
                        members: club.numOfSubscribers ?? 0,
                        imageUrl: club.picture,
                        onTap: () {
                          context.router.navigate(BookClubRoute(id: club.id));
                        },
                      );
                    },
                  );
                }
              }
            }
          } else {
            return _unauthorizedSubscriptions();
          }
        },
      ),
    );
  }

  Widget _unauthorizedSubscriptions() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const InfoText(
          regularText:
          'Чтобы просматривать клубы, в которых вы состоите, нужно ',
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
