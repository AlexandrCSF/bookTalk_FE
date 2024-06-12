import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/viewmodels/event_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../../utils/navigation/app_router.dart';
import 'widgets/event_card.dart';

@RoutePage()
class EventListPage extends StatefulWidget {
  final int clubId;
  final bool isAdministrator;

  const EventListPage({
    super.key,
    required this.clubId,
    required this.isAdministrator,
  });

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.background,
        elevation: 0,
        surfaceTintColor: colors.background,
        leading: AutoLeadingButton(
          color: colors.primary,
        ),
        // todo: check if is administrator
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                context.router.navigate(CreateEventRoute(clubId: widget.clubId));
              },
              icon: Icon(
                MdiIcons.plus,
                color: colors.primary,
              ),
            ),
          ),
        ],
      ),
      body: ChangeNotifierProvider<EventListViewModel>(
        // todo: change userId
        create: (BuildContext context) => EventListViewModel(
            clubId: widget.clubId, isAdministrated: widget.isAdministrator)
          ..loadMeetings(1),
        child: Consumer<EventListViewModel>(
          builder: (context, provider, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListView.builder(
                itemCount: 1 + provider.clubMeetingList.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                      child: Text(
                        "Ближайшие мероприятия",
                        style: text.headlineLarge
                            ?.copyWith(color: colors.onSurface),
                      ),
                    );
                  } else {
                    return EventCard(
                      meeting: provider.fromClubMeeting(provider.clubMeetingList[index-1]),
                      clubMeeting: provider.clubMeetingList[index-1],
                      onSubscribe: () => provider
                          .subscribe(provider.clubMeetingList[index-1].id),
                      /*todo: change to unsubscribe*/
                      onUnsubscribe: () => provider
                          .subscribe(provider.clubMeetingList[index-1].id),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
