import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/edit_avatar_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/tag_widget.dart';

@RoutePage()
class CreateClubPage extends StatelessWidget {
  const CreateClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    List<String> chosentags = ["#детектив", "#исторический_роман", "#юмор"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 55, top: 70),
                child: Text(
                  "Создайте свой клуб!",
                  style: text.titleMedium?.copyWith(color: colors.onBackground),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 12),
                child: EditAvatarWidget(
                  img: Image.asset('lib/resources/images/base_club_avatar.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60, right: 60),
                child: Column(
                  children: [
                    const TextFieldWidget(
                        label: "Название клуба",
                        hintText: "Введите название",
                        maxLines: 1),
                    const TextFieldWidget(
                        label: "Город",
                        hintText: "Введите город",
                        maxLines: 1),
                    const TextFieldWidget(
                        label: "Описание клуба",
                        hintText: "Введите описание",
                        maxLines: 6),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Жанры",
                          style: text.headlineLarge
                              ?.copyWith(color: colors.onSurface),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (String tag in chosentags)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: TagWidget(
                                  tag: tag,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: MainOutlineButton(
                        label: "Выбрать",
                        icon: MdiIcons.arrowRight,
                        onTap: () {
                          context.router.navigate(const InterestsRoute());
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 18),
                      child: MainPrimaryButton(
                        label: "Создать клуб",
                        icon: MdiIcons.check,
                        onTap: () {
                          context.router.navigate(BookClubRoute(id: 1));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
