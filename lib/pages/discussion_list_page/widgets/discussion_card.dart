import 'package:flutter/material.dart';

class DiscussionCard extends StatelessWidget {

  final VoidCallback? onTap;

  const DiscussionCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme
        .of(context)
        .colorScheme;
    final text = Theme
        .of(context)
        .textTheme;
    return GestureDetector(
      onTap: onTap,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Заголовок',
                  style: text.headlineLarge?.copyWith(color: colors.onBackground),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text('Также как базовый вектор развития способствует подготовке и '
                      'реализации системы массового участия. Ясность нашей позиции '
                      'очевидна: консультация с широким активом позволяет оценить '
                      'значение благоприятных перспектив. В частности, глубокий '
                      'уровень погружения, а также свежий взгляд на привычные '
                      'вещи — безусловно открывает новые горизонты для позиций, '
                      'занимаемых участниками в отношении поставленных задач.',
                      style: text.bodySmall?.copyWith(color: colors.outline), maxLines: 6, overflow: TextOverflow.ellipsis,),
                ),
              ],
            ),
          )
      ),
    );
  }
}
