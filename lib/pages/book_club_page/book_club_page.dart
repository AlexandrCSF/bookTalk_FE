import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/event_widget.dart';
import '../widgets/tag_widget.dart';

@RoutePage()
class BookClubPage extends StatelessWidget {
  final int id;

  const BookClubPage({
    super.key,
    @PathParam('id') this.id = 1,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    List<String> tags = ["#детектив", "#исторический_роман", "#юмор"];
    List<String> events = [
      "Исторические романы · Наследник из Калькутты · 15 июля 2024 · 14:00 · кафе Жёлтый носорог",
      "Ещё какой-нибудь клуб · Ещё какая-нибудь книга · 29 августа 2024 · 16:30 · кафе G. Shelter"
    ];
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
              onPressed: () {},
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'lib/images/hist_map.jpg',
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
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          'Исторические романы',
                          textAlign: TextAlign.center,
                          //textWidthBasis: TextWidthBasis.longestLine,
                          style: text.titleLarge
                              ?.copyWith(color: colors.onBackground),
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
                  child:
                      MainPrimaryButton(label: 'Вступить', icon: MdiIcons.plus),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    subtitle: Text(
                      'Не следует, однако, забывать, что новая '
                      'модель организационной деятельности требует анализа '
                      'экономической целесообразности принимаемых решений. '
                      'Предварительные выводы неутешительны: высококачественный '
                      'прототип будущего проекта влечет за собой процесс '
                      'внедрения и модернизации переосмысления '
                      'внешнеэкономических политик. Вот вам яркий пример '
                      'современных тенденций',
                      style: text.headlineSmall?.copyWith(
                        color: colors.outline,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Wrap(
                    children: [
                      for (String tag in tags)
                        TagWidget(
                          tag: tag,
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child:
                  MainPrimaryButton(label: 'Обсуждения', icon: MdiIcons.arrowRight),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ближайшие мероприятия",
                            style:
                            text.headlineLarge?.copyWith(color: colors.onSurface),
                          ),
                          IconButton(
                            icon: Icon(MdiIcons.arrowRight),
                            color: colors.onBackground,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      for (String event in events)
                        EventWidget(
                          event: event,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
