import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/edit_avatar_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/tag_widget.dart';

@RoutePage()
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    Image? img /*= Image.asset('lib/images/avatar.jpg')*/;
    List<String> tags = ["#детектив", "#исторический_роман", "#юмор"];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: colors.background,
        backgroundColor: colors.background,
        elevation: 0,
        title: Text(
          'Редактирование профиля',
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
                  child: EditAvatarWidget(img: img ??= Image.asset('lib/images/base_avatar.png')),
                ),
                const TextFieldWidget(label: "Имя и фамилия", hintText: "Введите имя и фамилию", text: "Роберт Серый", maxLines: 1),
                const TextFieldWidget(label: "Город",hintText: "Введите ваш город", text: "Воронеж", maxLines: 1),
                const TextFieldWidget(label: "Почта", hintText: "Введите почту", text: "robert_seryi@mail.ru", maxLines: 1),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Мои интересы",
                          style:
                          text.headlineLarge?.copyWith(color: colors.onSurface),
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
                                padding: const EdgeInsets.only(bottom: 5),
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
                  padding: const EdgeInsets.only(top: 5, bottom: 36),
                  child: MainOutlineButton(
                    label: "Добавить",
                    icon: MdiIcons.arrowRight,
                    onTap: (){
                      context.router.navigate(const InterestsRoute());
                    },
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
