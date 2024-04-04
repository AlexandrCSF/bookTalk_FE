import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../navigation/app_router.dart';
import 'widgets/event_card.dart';

@RoutePage()
class EventListPage extends StatelessWidget {
  const EventListPage({super.key});

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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                context.router.navigate(const CreateEventRoute());
              },
              icon: Icon(
                MdiIcons.plus,
                color: colors.primary,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                child: Text(
                  "Ближайшие мероприятия",
                  style: text.headlineLarge?.copyWith(color: colors.onSurface),
                ),
              );
            } else {
              return const EventCard(
                topic: 'Наследник из Калькутты',
                place: 'кафе Жёлтый носорог',
                date: '15 июля 2024',
                time: '14:00',
                city: 'Воронеж',
              );
            }
          },
        ),
      ),
    );
  }
}
