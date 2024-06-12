import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/avatar_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/pages/widgets/tag_widget.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';


@RoutePage()
class ProfilePage extends StatefulWidget {

  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  late ProfileViewModel provider;

  @override
  void initState() {
    provider = Provider.of<ProfileViewModel>(context, listen: false);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    Image? img;
    List<String> tags = ["#детектив", "#исторический_роман", "#юмор"];
    // todo: change user id
    provider.loadUserData(1);
    provider.profilePicture != null
        ? img = Image.network(provider.profilePicture!)
        : img = null;
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
                    // todo: add image
                    child: AvatarWidget(img: img ??= Image.asset('lib/utils/resources/images/base_avatar.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Text(
                          '${provider.firstName} ${provider.lastName}',
                          style:
                              text.titleMedium?.copyWith(color: colors.onSurface),
                        ),
                        Text(
                          provider.email,
                          style:
                              text.headlineMedium?.copyWith(color: colors.outline),
                        ),
                        Text(
                          provider.city,
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
                      onTap: () {
                        // todo: change the route
                        context.router.navigate(RegistrationRoute());
                        //context.router.navigate(AuthorizationRoute());
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
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
