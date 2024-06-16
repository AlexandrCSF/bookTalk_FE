import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  final Map<DateTime, List<dynamic>> events;

  const Calendar({super.key, required this.events});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  List<dynamic> _getEventsForDay(DateTime day) {
    return widget.events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    print("CALENDAR EVENTS: ${widget.events}");
    return Card(
      surfaceTintColor: colors.surface,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        side: BorderSide(
          color: colors.primary,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TableCalendar(
          firstDay: DateTime.utc(2022, 1, 1),
          lastDay: DateTime.utc(2035, 12, 31),
          focusedDay: DateTime.now(),
          currentDay: DateTime.now(),
          startingDayOfWeek: StartingDayOfWeek.monday,
          daysOfWeekHeight: 40,
          rowHeight: 40,
          eventLoader: _getEventsForDay,
          calendarBuilders:
              CalendarBuilders(markerBuilder: (context, date, events) {
            if (events.isNotEmpty) {
              return Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: colors.primary,
                      width: 2,
                    ),
                    shape: BoxShape.circle,
                  ),
                );
            }
          }),
          locale: 'ru_RU',
          availableCalendarFormats: const {
            CalendarFormat.month: 'month',
          },
          headerStyle: HeaderStyle(
            titleTextStyle: text.headlineLarge!.copyWith(color: colors.primary),
            leftChevronIcon: Icon(
              MdiIcons.arrowLeft,
              color: colors.primary,
            ),
            rightChevronIcon: Icon(
              MdiIcons.arrowRight,
              color: colors.primary,
            ),
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: text.headlineMedium!.copyWith(color: colors.primary),
            weekendStyle: text.headlineMedium!.copyWith(color: colors.error),
          ),
          calendarStyle: CalendarStyle(
            weekendTextStyle:
                text.headlineMedium!.copyWith(color: colors.error),
            defaultTextStyle:
                text.headlineMedium!.copyWith(color: colors.primary),
            todayDecoration:
                BoxDecoration(color: colors.primary, shape: BoxShape.circle),
            outsideTextStyle: text.headlineSmall!
                .copyWith(fontWeight: FontWeight.w200, color: colors.outline),
          ),
        ),
      ),
    );
  }
}
