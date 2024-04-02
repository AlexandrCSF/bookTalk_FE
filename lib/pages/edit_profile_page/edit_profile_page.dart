import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

@RoutePage()
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colors.background,
        elevation: 0,
        title: Text(
          'Редактирование профиля',
          style: text.headlineLarge?.copyWith(color: colors.primary),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                context.router.maybePop(const ProfileRoute());
              },
              icon: Icon(MdiIcons.check),
            ),
          )
        ],
      ),
      body: const Center(child: Text('edit profile')),
    );
  }
}
