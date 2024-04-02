import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../widgets/event_widget.dart';

class EventListWidget extends StatelessWidget {

  final List<String> events;
  final VoidCallback onTap;

  const EventListWidget({super.key, required this.events, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ближайшие мероприятия",
                style: text.headlineLarge
                    ?.copyWith(color: colors.onSurface),
              ),
              IconButton(
                icon: Icon(MdiIcons.arrowRight),
                color: colors.onBackground,
                onPressed: onTap,
              ),
            ],
          ),
          for (String event in events)
            EventWidget(
              event: event,
            ),
        ],
      ),
    );
  }
}
