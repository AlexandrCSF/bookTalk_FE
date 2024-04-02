import 'package:booktalk_frontend/pages/widgets/small_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return AspectRatio(
      aspectRatio: 320/208,
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
                      style: text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      'Наследник из Калькутты',
                      style:
                          text.headlineMedium?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Дата: ',
                      style: text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      '15 июля 2024',
                      style:
                          text.headlineMedium?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Время: ',
                      style: text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      '14:00',
                      style:
                          text.headlineMedium?.copyWith(color: colors.onSurface),
                    ),
                    Text(
                      'Место: ',
                      style: text.headlineMedium?.copyWith(color: colors.primary),
                    ),
                    Text(
                      'кафе Жёлтый носорог',
                      style:
                          text.headlineMedium?.copyWith(color: colors.onSurface),
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
                    icon: MdiIcons.plus,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
