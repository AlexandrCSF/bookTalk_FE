import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CreateClubPage extends StatelessWidget {
  const CreateClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Text(
                  "Создайте свой клуб!",
                  style: text.titleMedium?.copyWith(color: colors.onBackground),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
