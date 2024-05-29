import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/book_club_list_page/book_club_list_page.dart';
import 'package:booktalk_frontend/pages/my_events_page/widgets/event_list_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_disabled_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/viewmodels/my_events_viewmodel.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/navigation/app_router.dart';
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
    /*Map<DateTime, List<dynamic>> events = {
      DateTime.utc(2024, 6, 5): ['aaa', 'ffff'],
      DateTime.utc(2024, 6, 8): ['aaa', 'ffff'],
      DateTime.utc(2024, 6, 10): ['aaa', 'ffff'],
    };*/
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
      body: Consumer<MyEventsViewModel>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 20.0, left: 20.0, top: 5.0, bottom: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Calendar(events: provider.meetingMarkers),
                  EventListWidget(events: provider.todayMeetings, title: "Мероприятия сегодня"),
                  EventListWidget(events: provider.allMeetings, title: "Ближайшие мероприятия"),
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
          );
        }
      )
    );
  }
}
