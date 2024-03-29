import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ClubCard extends StatelessWidget {

  final VoidCallback? onTap;

  const ClubCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 24 / 10,
        child: Card(
          surfaceTintColor: colors.surface,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            side: BorderSide(
              color: colors.primary,
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 50.0, top: 15.0, bottom: 15.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/images/hist_map.jpg',
                        width: 80,
                        height: 120,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Исторические романы',
                            style: text.headlineLarge
                                ?.copyWith(color: colors.onBackground),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'Значимость этих проблем настолько очевидна, '
                            'что новая модель организационной деятельности '
                            'требуют от нас анализа новых предложений. Задача '
                            'организации, в особенности же новая модель',
                            style:
                                text.bodySmall?.copyWith(color: colors.outline),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                          Text(
                            '25 участников',
                            style:
                                text.bodyLarge?.copyWith(color: colors.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    MdiIcons.arrowRight,
                    size: 26,
                    color: colors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
