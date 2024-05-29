import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/book_club_page/widgets/club_description.dart';
import 'package:booktalk_frontend/pages/book_club_page/widgets/club_tags.dart';
import 'package:booktalk_frontend/pages/book_club_page/widgets/event_list_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/event_widget.dart';
import '../widgets/tag_widget.dart';

@RoutePage()
class BookClubPage extends StatefulWidget {
  final int id;

  const BookClubPage({
    super.key,
    @PathParam('id') required this.id,
  });

  @override
  State<BookClubPage> createState() => _BookClubPageState();
}

class _BookClubPageState extends State<BookClubPage> {

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    /*List<String> tags = ["#детектив", "#исторический_роман", "#юмор"];
    List<String> events = [
      "Исторические романы · Наследник из Калькутты · 15 июля 2024 · 14:00 · кафе Жёлтый носорог",
      "Ещё какой-нибудь клуб · Ещё какая-нибудь книга · 29 августа 2024 · 16:30 · кафе G. Shelter"
    ];*/

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
                  // todo: add clubId to MemberListRoute
                  context.router.navigate(const MemberListRoute());
                },
              ),
            )
          ],
        ),
        body: ChangeNotifierProvider<BookClubViewModel>(
          create: (BuildContext context) =>
              BookClubViewModel(clubId: widget.id)..getClubData(1),
          child: Consumer<BookClubViewModel>(
            builder: (context, provider, child) {
              // todo: change userId
              return provider.isLoading
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
                                    'lib/utils/resources/images/hist_map.jpg',
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
                                              .navigate(const EditClubRoute());
                                        },
                                      )
                                    : provider.isSubscribed
                                        ? MainOutlineButton(
                                            label: 'Вы вступили',
                                            icon: MdiIcons.check,
                                            onTap: () => provider
                                            // todo: change to unsubscribe
                                                .subscribe(widget.id as String),
                                          )
                                        : MainPrimaryButton(
                                            label: 'Вступить',
                                            icon: MdiIcons.plus,
                                            onTap: () => provider
                                                .subscribe(widget.id as String),
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
                                    context.navigateTo(DiscussionListRoute(clubId: widget.id));
                                  },
                                ),
                              ),
                              EventListWidget(
                                events: provider.events,
                                onTap: () {
                                  context.router
                                      .navigate(EventListRoute(clubId: widget.id, isAdministrator: provider.isAdministrator));
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
            },
          ),
        ));
  }
}
