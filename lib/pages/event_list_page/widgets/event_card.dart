import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/small_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../widgets/small_outline_button.dart';

class EventCard extends StatefulWidget {
  final String topic;
  final String city;
  final String date;
  final String time;
  final String place;
  final bool isSubscribed;
  final bool isAdministrator;

  const EventCard({
    super.key,
    required this.topic,
    required this.city,
    required this.date,
    required this.time,
    required this.place,
    required this.isSubscribed,
    required this.isAdministrator,
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
                      widget.topic,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Дата: ',
                      style:
                          text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      widget.date,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Время: ',
                      style:
                          text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      widget.time,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Место: ',
                      style:
                          text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      widget.place,
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '25 человек идут',
                        style:
                            text.headlineSmall?.copyWith(color: colors.primary),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SmallPrimaryButton(
                    icon: MdiIcons.pencil,
                    onTap: () {
                      context.router.navigate(EditEventRoute(
                        topic: widget.topic,
                        place: widget.place,
                        date: widget.date,
                        time: widget.time,
                        city: widget.city,
                      ));
                    },
                  ),
                  /*_isChecked
                      ? SmallOutlineButton(
                          icon: MdiIcons.check,
                          onTap: _toggleCheck,
                        )
                      : SmallPrimaryButton(
                          icon: MdiIcons.plus,
                          onTap: _toggleCheck,
                        ),*/
                ),
              ],
            ),
          )),
    );
  }
}
