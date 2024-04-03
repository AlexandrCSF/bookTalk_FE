import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/chosen_tag_widget.dart';
import '../widgets/tag_widget.dart';

@RoutePage()
class InterestsPage extends StatelessWidget {
  const InterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    List<String> chosentags = ["#детектив", "#исторический_роман", "#юмор"];
    List<String> tags = ["#ужасы", "#young_adult"];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Расскажите нам о своих интересах",
                  style: text.titleMedium?.copyWith(color: colors.onBackground),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39),
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 8,
                    runSpacing: 7,
                    children: [
                      for (String tag in chosentags)
                        ChosenTagWidget(
                          tag: tag,
                        ),
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 36),
        child: MainPrimaryButton(
            label: "Подтвердить",
            icon: MdiIcons.arrowRight,
          onTap: (){
              context.router.maybePop();
          },
        ),
      ),
    );
  }
}
