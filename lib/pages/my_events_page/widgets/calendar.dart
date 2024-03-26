import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
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
          locale: 'ru_RU',
          availableCalendarFormats: const {
            CalendarFormat.month: 'month',
          },
          headerStyle: HeaderStyle(
            titleTextStyle: text.headlineMedium!.copyWith(color: colors.primary),
            leftChevronIcon: Icon(MdiIcons.arrowLeft, color: colors.primary,),
            rightChevronIcon: Icon(MdiIcons.arrowRight, color: colors.primary,),
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: text.bodySmall!.copyWith(fontWeight: FontWeight.bold, color: colors.primary,),
            weekendStyle: text.bodySmall!.copyWith(fontWeight: FontWeight.bold, color: colors.error,),
          ),
          calendarStyle: CalendarStyle(
            weekendTextStyle: text.bodySmall!.copyWith(fontWeight: FontWeight.bold, color: colors.error,),
            defaultTextStyle: text.bodySmall!.copyWith(fontWeight: FontWeight.bold, color: colors.primary,),
            todayDecoration: BoxDecoration(
              color: colors.primary,
              shape: BoxShape.circle,
            ),
            outsideTextStyle: text.bodySmall!.copyWith(fontWeight: FontWeight.w200, color: colors.outline,),
          ),
        ),
      ),
    );
  }
}
