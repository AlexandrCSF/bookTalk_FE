import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {

  const CommentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme
        .of(context)
        .colorScheme;
    final text = Theme
        .of(context)
        .textTheme;
    return Card(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: Image
                        .asset('lib/images/5_3.jpg')
                        .image,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Имя Фамилия',
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Также как базовый вектор развития способствует подготовке и '
                      'реализации системы массового участия. Ясность нашей позиции '
                      'очевидна: консультация с широким активом позволяет оценить '
                      'значение благоприятных перспектив. В частности, глубокий '
                      'уровень погружения, а также свежий взгляд на привычные '
                      'вещи — безусловно открывает новые горизонты для позиций, '
                      'занимаемых участниками в отношении поставленных задач.',
                  style: text.bodyMedium?.copyWith(color: colors.outline),
                ),
              ),
            ],
          ),
        )
    );
  }
}
