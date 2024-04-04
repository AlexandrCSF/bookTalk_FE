import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/avatar_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/pages/widgets/tag_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    Image? img /*= Image.asset('lib/images/avatar.jpg')*/;
    List<String> tags = ["#детектив", "#исторический_роман", "#юмор"];
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: colors.background,
          backgroundColor: colors.background,
          elevation: 0,
          title: Text(
            'Профиль',
            style: text.headlineLarge?.copyWith(color: colors.primary),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  context.router.navigate(const EditProfileRoute());
                },
                icon: Icon(
                  MdiIcons.pencil,
                  color: colors.primary,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 37),
                    child: AvatarWidget(img: img ??= Image.asset('lib/images/base_avatar.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Text(
                          "Роберт Серый",
                          style:
                              text.titleMedium?.copyWith(color: colors.onSurface),
                        ),
                        Text(
                          "robert_seryi@mail.ru",
                          style:
                              text.headlineMedium?.copyWith(color: colors.outline),
                        ),
                        Text(
                          "г.Воронеж",
                          style:
                              text.headlineMedium?.copyWith(color: colors.outline),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Мои интересы",
                          style:
                              text.headlineLarge?.copyWith(color: colors.onSurface),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            spacing: 8,
                            runSpacing: 7,
                            children: [
                              for (String tag in tags)
                                TagWidget(
                                  tag: tag,
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 46),
                    child: MainPrimaryButton(
                      label: "Создать клуб",
                      icon: MdiIcons.plus,
                      onTap: (){
                        context.router.navigate(const CreateClubRoute());
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: MainOutlineButton(
                      label: "Выйти",
                      icon: MdiIcons.logout,
                      onTap: (){
                        context.router.navigate(const AuthorizationRoute());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );

    //Profile page for unauthorized user


    /*return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  width: 272,
                  height: 260,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                  child: Image.asset(
                    'lib/images/profile_image.jpg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17),
                  child: Text(
                    "Читай, общайся, развивайся вместе с bookTalk",
                    style: text.titleMedium?.copyWith(color: colors.onBackground),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Создайте собственный книжный клуб или присоединитесь к обсуждению книг любимых жанров в приложении bookTalk",
                    style: text.labelMedium?.copyWith(color: colors.outline),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 43),
                child: MainOutlineButton(
                  label: "Войти",
                  icon: MdiIcons.login,
                  onTap: (){
                    context.router.navigate(const AuthorizationRoute());
                  },
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: MainPrimaryButton(
                    label: "Зарегистрироваться",
                    icon: MdiIcons.plus,
                    onTap: (){
                      context.router.navigate(const RegistrationRoute());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );*/
  }
}
