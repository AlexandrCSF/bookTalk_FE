import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:booktalk_frontend/viewmodels/authorization_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/main_primary_button.dart';

@RoutePage()
class AuthorizationPage extends StatelessWidget {
  AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Consumer<ProfileViewModel>(
      builder: (context, provider, child) {
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
                        'lib/utils/resources/images/logo.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 46),
                      child: Text(
                        "С возвращением!",
                        style: text.titleMedium
                            ?.copyWith(color: colors.onBackground),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 55),
                      child: TextFieldWidget(
                        label: "Почта",
                        hintText: "Введите почту",
                        maxLines: 1,
                        controller: provider.emailController,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextFieldWidget(
                        label: "Пароль",
                        hintText: "Введите пароль",
                        maxLines: 1,
                        controller: provider.passwordController,
                      ),
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
              onTap: () {
                provider.signIn().then((value) => context.router.navigate(MyEventsRoute()));
              },
            ),
          ),
        );
      },
    );
  }
}
