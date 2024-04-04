import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/main_primary_button.dart';

@RoutePage()
class EditEventPage extends StatelessWidget {
  final String topic;
  final String city;
  final String date;
  final String time;
  final String place;

  const EditEventPage({
    super.key,
    required this.topic,
    required this.city,
    required this.date,
    required this.time,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: colors.background,
        leading: AutoLeadingButton(
          color: colors.primary,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(MdiIcons.trashCanOutline),
              color: colors.primary,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                TextFieldWidget(
                    label: 'Тема мероприятия',
                    hintText: 'Введите тему',
                    text: topic,
                    maxLines: 1),
                TextFieldWidget(
                    label: 'Город',
                    hintText: 'Введите город',
                    text: city,
                    maxLines: 1),
                TextFieldWidget(
                    label: 'Дата',
                    hintText: 'Выберите дату',
                    text: date,
                    maxLines: 1),
                TextFieldWidget(
                    label: 'Время',
                    hintText: 'Выберите время',
                    text: time,
                    maxLines: 1),
                TextFieldWidget(
                    label: 'Место',
                    hintText: 'Введите место',
                    text: place,
                    maxLines: 1),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: MainPrimaryButton(label: 'Сохранить', icon: MdiIcons.check),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
