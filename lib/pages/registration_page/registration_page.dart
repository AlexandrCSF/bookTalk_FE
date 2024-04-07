import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/edit_avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/main_primary_button.dart';
import '../widgets/textfield_widget.dart';

@RoutePage()
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 45),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 45),
                  child: Text(
                    "Добро пожаловать!",
                    style:
                    text.titleMedium?.copyWith(color: colors.onBackground),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 19, bottom: 19),
                  child: EditAvatarWidget(
                    img: Image.asset('lib/images/base_avatar.png'),
                  ),
                ),
                const TextFieldWidget(
                    label: "Имя и фамилия",
                    hintText: "Введите имя и фамилию",
                    text: "",
                    maxLines: 1),
                const TextFieldWidget(
                    label: "Город",
                    hintText: "Введите ваш город",
                    text: "",
                    maxLines: 1),
                const TextFieldWidget(
                    label: "Почта",
                    hintText: "Введите почту",
                    text: "",
                    maxLines: 1),
                const TextFieldWidget(
                    label: "Пароль",
                    hintText: "Придумайте пароль",
                    text: "",
                    maxLines: 1),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 60, right: 60, bottom: 39),
        child: MainPrimaryButton(
          label: "Готово",
          icon: MdiIcons.check,
          onTap: () {
            context.router.navigate(const MyEventsRoute());
          },
        ),
      ),
    );
  }
}
