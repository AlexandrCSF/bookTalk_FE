import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/analytics/analytics.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/main_primary_button.dart';

@RoutePage()
class AuthorizationPage extends StatelessWidget {
  AuthorizationPage({super.key});

  final Analytics analytics = Analytics(analytics: FirebaseAnalytics.instance);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 115),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 61,
                  child: Image.asset(
                    'lib/images/logo.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 46),
                  child: Text(
                    "С возвращением!",
                    style:
                        text.titleMedium?.copyWith(color: colors.onBackground),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: TextFieldWidget(
                      label: "Логин",
                      hintText: "Введите логин",
                      text: "",
                      maxLines: 1),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextFieldWidget(
                      label: "Пароль",
                      hintText: "Введите пароль",
                      text: "",
                      maxLines: 1),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 60, right: 60, bottom: 60),
        child: MainPrimaryButton(
          label: "Войти",
          icon: MdiIcons.login,
          onTap: () async {
            await analytics.signIn();
            context.router.navigate(const MyEventsRoute());
          },
        ),
      ),
    );
  }
}
