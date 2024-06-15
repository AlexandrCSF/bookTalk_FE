import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/edit_avatar_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_error_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/tag_widget.dart';

@RoutePage()
class EditClubPage extends StatelessWidget {
  const EditClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    Image? img;
    List<String> tags = ["#детектив", "#исторический_роман", "#юмор"];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: colors.background,
        backgroundColor: colors.background,
        elevation: 0,
        title: Text(
          'Редактирование клуба',
          style: text.headlineLarge?.copyWith(color: colors.primary),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                context.router.maybePop(ProfileRoute());
              },
              icon: Icon(
                MdiIcons.check,
                color: colors.primary,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: EditAvatarWidget(
                      img: img ??=
                          Image.asset('lib/utils/resources/images/base_club_avatar.png')),
                ),
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
                  hintText: "Введите почту",
                  maxLines: 6,
                ),
                Column(
                  children: [
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
                            for (String tag in tags)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 7),
                                child: TagWidget(
                                  tag: tag,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: MainOutlineButton(
                    label: "Добавить",
                    icon: MdiIcons.arrowRight,
                    onTap: () {
                      context.router.navigate(InterestsRoute());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  child: MainErrorButton(
                    label: "Удалить клуб",
                    icon: MdiIcons.close,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
