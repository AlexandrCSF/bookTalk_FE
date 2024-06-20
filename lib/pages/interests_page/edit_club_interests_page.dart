import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/pages/interests_page/widgets/clickable_tag_widget.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:booktalk_frontend/viewmodels/create_club_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/edit_club_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/chosen_tag_widget.dart';
import '../widgets/tag_widget.dart';

@RoutePage()
class EditClubInterestsPage extends StatelessWidget {
  const EditClubInterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    EditClubViewModel provider = Provider.of<EditClubViewModel>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Расскажите нам об интересах вашего клуба",
                  style: text.titleMedium?.copyWith(color: colors.onBackground),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39),
                  child: Container(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 8,
                      runSpacing: 7,
                      children: [
                        for (Genre genre in provider.allGenres)
                          ClickableTagWidget(
                            tag: StringFormatting.getFormattedTag(genre.name),
                            isChosen: provider.selectedGenres.contains(genre),
                            onTap: () {
                              if (provider.selectedGenres.contains(genre)) {
                                provider.removeGenre(genre);
                              } else {
                                provider.addGenre(genre);
                              }
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 36),
        child: MainPrimaryButton(
          label: "Подтвердить",
          icon: MdiIcons.arrowRight,
          onTap: () {
            context.router.maybePop();
          },
        ),
      ),
    );
  }
}
