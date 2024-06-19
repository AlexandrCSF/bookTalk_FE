import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/utils/analytics/analytics.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/book_club_page/widgets/club_description.dart';
import 'package:booktalk_frontend/pages/book_club_page/widgets/club_tags.dart';
import 'package:booktalk_frontend/pages/book_club_page/widgets/event_list_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

@RoutePage()
class BookClubPage extends StatefulWidget {
  final int id;
  final ClubCard? clubCard;

  const BookClubPage({
    super.key,
    @PathParam('id') required this.id,
    this.clubCard,
  });

  @override
  State<BookClubPage> createState() => _BookClubPageState();
}

class _BookClubPageState extends State<BookClubPage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    getIt.get<Analytics>().openClubPage();
    final profileProvider = Provider.of<ProfileViewModel>(context);
    return ChangeNotifierProvider<BookClubViewModel>(
      create: (BuildContext context) => BookClubViewModel(clubId: widget.id)
        ..getClubData(profileProvider.userId),
      child: Consumer<BookClubViewModel>(
        builder: (context, provider, child) {
          return Scaffold(
            appBar: AppBar(
              surfaceTintColor: colors.background,
              elevation: 0,
              leading: AutoLeadingButton(color: colors.primary),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: Icon(MdiIcons.accountMultipleOutline),
                    color: colors.primary,
                    onPressed: () {
                      context.router
                          .navigate(MemberListRoute(members: provider.members));
                    },
                  ),
                )
              ],
            ),
            body: provider.isLoading
                ? const Center(child: CircularProgressIndicator())
                : CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        expandedHeight: 400,
                        automaticallyImplyLeading: false,
                        flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.pin,
                          background: Stack(
                            children: [
                              Positioned.fill(
                                // todo: change to imageUrl
                                child: Image.asset(
                                  'lib/utils/resources/images/base_club_avatar.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(32),
                                        topRight: Radius.circular(32)),
                                    color: colors.background,
                                  ),
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0),
                                    child: Text(
                                      provider.club!.name,
                                      textAlign: TextAlign.center,
                                      style: text.titleLarge?.copyWith(
                                          color: colors.onBackground),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        sliver: SliverList.list(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: provider.isAdministrator
                                  ? MainPrimaryButton(
                                      label: 'Редактировать',
                                      icon: MdiIcons.pencil,
                                      onTap: () {
                                        context.router
                                            .navigate(EditClubRoute(club: provider.club));
                                      },
                                    )
                                  : provider.isSubscribed
                                      ? MainOutlineButton(
                                          label: 'Вы вступили',
                                          icon: MdiIcons.check,
                                          onTap: () => provider.unsubscribe(),
                                        )
                                      : MainPrimaryButton(
                                          label: 'Вступить',
                                          icon: MdiIcons.plus,
                                          onTap: () => provider.subscribe(),
                                        ),
                            ),
                            ClubDescription(
                              description: provider.club!.description,
                            ),
                            ClubTags(tags: provider.genres),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: MainPrimaryButton(
                                label: 'Обсуждения',
                                icon: MdiIcons.arrowRight,
                                onTap: () {
                                  context.router.navigate(
                                      DiscussionListRoute(clubId: widget.id));
                                },
                              ),
                            ),
                            EventListWidget(
                              events: provider.events,
                              onTap: () {
                                context.router.navigate(
                                  EventListRoute(
                                    clubId: widget.id,
                                    isAdministrator: provider.isAdministrator,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
