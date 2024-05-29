import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/club_meeting.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/small_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../widgets/small_outline_button.dart';

class EventCard extends StatefulWidget {
  final ClubMeeting clubMeeting;
  final VoidCallback onSubscribe;
  final VoidCallback onUnsubscribe;

  const EventCard({
    super.key,
    required this.clubMeeting,
    required this.onSubscribe,
    required this.onUnsubscribe,
  });

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isChecked = false;

  void _toggleCheck() {
    setState(() {
      _isChecked = !_isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return AspectRatio(
      aspectRatio: 320 / 215,
      child: Card(
          surfaceTintColor: colors.surface,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            side: BorderSide(
              color: colors.primary,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Тема встречи: ',
                      style:
                          text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      widget.clubMeeting.name,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Дата: ',
                      style:
                          text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      widget.clubMeeting.date,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Время: ',
                      style:
                          text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      widget.clubMeeting.time,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Место: ',
                      style:
                          text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      widget.clubMeeting.location,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        _numOfMembers(widget.clubMeeting.numOfAttender),
                        style:
                            text.headlineSmall?.copyWith(color: colors.primary),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SmallPrimaryButton(
                    icon: widget.clubMeeting.isAdministrator
                        ? MdiIcons.pencil
                        : widget.clubMeeting.isSubscribed
                            ? MdiIcons.check
                            : MdiIcons.plus,
                    onTap: widget.clubMeeting.isAdministrator
                        ? () => {}/*context.router.navigate(EditEventRoute(/*parameters*/))*/
                        : widget.clubMeeting.isSubscribed
                            ? widget.onUnsubscribe
                            : widget.onSubscribe,
                  ),
                ),
              ],
            ),
          )),
    );
  }

  String _numOfMembers(int numOfAttenders) {
    final members = widget.clubMeeting.numOfAttender;
    if (members % 100 == 11 ||
        members % 100 == 12 ||
        members % 100 == 13 ||
        members % 100 == 14 ||
        members % 10 > 4 ||
        members % 10 == 0) {
      return '$numOfAttenders человек идут';
    } else if (members % 10 == 1) {
      return '$numOfAttenders человек идёт';
    } else {
      return '$numOfAttenders человека идут';
    }
  }
}
