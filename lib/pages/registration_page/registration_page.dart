import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/registration_interests_page/registration_interests_page.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/widgets/dropdown_list_widget.dart';
import 'package:booktalk_frontend/pages/widgets/edit_avatar_widget.dart';
import 'package:booktalk_frontend/viewmodels/registration_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/main_primary_button.dart';
import '../widgets/textfield_widget.dart';

@RoutePage()
class RegistrationPage extends StatefulWidget {

  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  late RegistrationViewModel viewModel;

  @override
  void initState() {
    viewModel = Provider.of<RegistrationViewModel>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    viewModel.loadGenres();
    return Consumer<RegistrationViewModel>(
      builder: (context, provider, child) {
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
                        style: text.titleMedium
                            ?.copyWith(color: colors.onBackground),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19, bottom: 19),
                      child: EditAvatarWidget(
                        img: Image.asset(
                            'lib/utils/eresources/images/base_avatar.png'),
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
                    TextFieldWidget(
                      label: "Пароль",
                      hintText: "Придумайте пароль",
                      maxLines: 1,
                      controller: provider.passwordController,
                    ),
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
                //provider.signUp();
                if (provider.checkFields()) {
                  context.router.navigate(RegistrationInterestsRoute());
                }
              },
            ),
          ),
        );
      },
    );
  }
}
