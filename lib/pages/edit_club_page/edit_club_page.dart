import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/pages/widgets/dropdown_list_widget.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/edit_avatar_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_error_button.dart';
import 'package:booktalk_frontend/pages/widgets/main_outline_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:booktalk_frontend/viewmodels/book_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/edit_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/edit_profile_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/tag_widget.dart';

@RoutePage()
class EditClubPage extends StatefulWidget {
  //final ClubCard club;
  final int id;

  const EditClubPage({super.key, required this.id});

  @override
  State<EditClubPage> createState() => _EditClubPageState();
}

class _EditClubPageState extends State<EditClubPage> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    EditClubViewModel provider =
        Provider.of<EditClubViewModel>(context, listen: false);
    provider.initEditClub(widget.id);
    provider.loadGenres();
    BookClubViewModel clubProvider =
        Provider.of<BookClubViewModel>(context, listen: false);
    ProfileViewModel profileProvider =
        Provider.of<ProfileViewModel>(context, listen: false);
    return Consumer<EditClubViewModel>(builder: (context, provider, child) {
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
                  provider
                      .editClub()
                      .then((value) =>
                          clubProvider.getClubData(profileProvider.userId, clubProvider.club.id))
                      .then((value) => context.router
                          .maybePop(BookClubRoute(id: widget.id)));
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
                      img: provider.newClubAvatar == null
                          ? provider.clubAvatarUrl.isEmpty
                              ? Image.asset(
                                  'lib/utils/resources/images/base_club_avatar.png')
                              : Image.network(provider.clubAvatarUrl)
                          : Image.file(provider.newClubAvatar!),
                    ),
                  ),
                  TextFieldWidget(
                    label: "Название клуба",
                    hintText: "Введите название",
                    maxLines: 1,
                    controller: provider.nameController,
                  ),
                  DropdownListWidget(
                    value: provider.selectedCity,
                    values: provider.cities,
                    onChooseItem: provider.setCity,
                    label: "Город",
                  ),
                  TextFieldWidget(
                    label: "Описание клуба",
                    hintText: "Введите описание",
                    maxLines: 6,
                    controller: provider.descriptionController,
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
                              for (Genre genre in provider.selectedGenres)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 7),
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
                  if (provider.errorMessage.isNotEmpty)
                    Text(
                      provider.errorMessage,
                      style: text.headlineSmall?.copyWith(color: colors.error),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: MainOutlineButton(
                      label: "Добавить",
                      icon: MdiIcons.arrowRight,
                      onTap: () {
                        context.router.navigate(EditClubInterestsRoute());
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: MainErrorButton(
                      label: "Удалить клуб",
                      icon: MdiIcons.close,
                      onTap: () => provider.deleteClub().then((value) =>
                          context.navigateTo(const BookClubListRoute())),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
