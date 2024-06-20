import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/pages/widgets/dropdown_list_widget.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/edit_avatar_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:booktalk_frontend/viewmodels/edit_profile_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/tag_widget.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  final User user;

  const EditProfilePage({super.key, required this.user});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    EditProfileViewModel provider =
        Provider.of<EditProfileViewModel>(context, listen: false);
    provider.initEditProfile(widget.user);
    provider.loadGenres();
    ProfileViewModel profileProvider =
        Provider.of<ProfileViewModel>(context, listen: false);
    return Consumer<EditProfileViewModel>(
      builder: (context, provider, child) {
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
                    provider
                        .editProfile()
                        .then((value) => profileProvider
                            .loadUserData(profileProvider.userId))
                        .then(
                            (value) => context.router.maybePop(ProfileRoute()));
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
                        img: provider.newAvatar == null
                            ? provider.avatarUrl.isEmpty
                                ? Image.asset(
                                    'lib/utils/resources/images/base_avatar.png')
                                : Image.network(provider.avatarUrl)
                            : Image.file(provider.newAvatar!),
                      ),
                    ),
                    TextFieldWidget(
                      label: "Имя",
                      hintText: "Введите имя",
                      maxLines: 1,
                      controller: provider.firstNameController,
                    ),
                    TextFieldWidget(
                      label: "Фамилия",
                      hintText: "Введите фамилию",
                      maxLines: 1,
                      controller: provider.lastNameController,
                    ),
                    DropdownListWidget(
                      value: provider.selectedCity,
                      values: provider.cities,
                      onChooseItem: provider.setCity,
                      label: "Город",
                    ),
                    TextFieldWidget(
                      label: "Почта",
                      hintText: "Введите почту",
                      maxLines: 1,
                      controller: provider.emailController,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Мои интересы",
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
                                for (Genre genre in provider.selectedGenres)
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: TagWidget(
                                      tag: StringFormatting.getFormattedTag(
                                          genre.name),
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
                        onTap: () {
                          context.router
                              .navigate(const EditProfileInterestsRoute());
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
