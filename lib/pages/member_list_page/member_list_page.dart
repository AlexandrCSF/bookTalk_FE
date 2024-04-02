import 'package:booktalk_frontend/pages/member_list_page/widgets/member_tile.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MemberListPage extends StatelessWidget {
  const MemberListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.background,
        elevation: 0,
        surfaceTintColor: colors.background,
        leading: AutoLeadingButton(
          color: colors.primary,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
        child: ListView.builder(
          itemCount: 1 + 20,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                child: Text(
                  "Участники клуба",
                  style: text.headlineLarge?.copyWith(color: colors.onSurface),
                ),
              );
            }
            else {
              return const MemberTile();
            }
          },
        ),
      ),
    );
  }
}
