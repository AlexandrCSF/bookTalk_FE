import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/main_primary_button.dart';

@RoutePage()
class CreateEventPage extends StatelessWidget {
  const CreateEventPage({super.key});

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const TextFieldWidget(
                    label: 'Тема мероприятия',
                    hintText: 'Введите тему',
                    maxLines: 1),
                const TextFieldWidget(
                    label: 'Город',
                    hintText: 'Введите город',
                    maxLines: 1),
                const TextFieldWidget(
                    label: 'Дата',
                    hintText: 'Выберите дату',
                    maxLines: 1),
                const TextFieldWidget(
                    label: 'Время',
                    hintText: 'Выберите время',
                    maxLines: 1),
                const TextFieldWidget(
                    label: 'Место',
                    hintText: 'Введите место',
                    maxLines: 1),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: MainPrimaryButton(label: 'Добавить', icon: MdiIcons.check),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
