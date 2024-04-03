import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/book_club_list_page.dart';
import 'package:booktalk_frontend/pages/my_events_page/widgets/event_list_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_disabled_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../navigation/app_router.dart';
import '../widgets/main_outline_button.dart';
import 'widgets/info_text.dart';
import 'widgets/calendar.dart';

@RoutePage()
class MyEventsPage extends StatelessWidget {
  const MyEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    List<String> events = [
      "Исторические романы · Наследник из Калькутты · 15 июля 2024 · 14:00 · кафе Жёлтый носорог",
      "Ещё какой-нибудь клуб · Ещё какая-нибудь книга · 29 августа 2024 · 16:30 · кафе G. Shelter"
    ];
    List<String> todayEvents = [
      "Исторические романы · Наследник из Калькутты · 15 июля 2024 · 14:00 · кафе Жёлтый носорог",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.background,
        surfaceTintColor: colors.background,
        elevation: 0,
        title: Text(
          'Мероприятия',
          style: text.headlineLarge?.copyWith(color: colors.primary),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, top: 5.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Calendar(),
              EventListWidget(events: todayEvents, title: "Мероприятия сегодня"),
              EventListWidget(events: events, title: "Ближайшие мероприятия",),
            ],
          ),
          /*child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Calendar(),
              const InfoText(
                regularText: 'Чтобы просматривать мероприятия, нужно ',
                boldText: 'войти или зарегистрироваться',
              ),
              MainPrimaryButton(
                label: 'Авторизоваться',
                icon: MdiIcons.arrowRight,
                onTap: () {
                  context.navigateTo(const BookClubListTab(children: [ BookClubListRoute() ]));
                },
              )
            ],
          ),*/
        ),
      ),
    );
  }
}
