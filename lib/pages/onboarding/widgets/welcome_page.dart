import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WelcomePage extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String title;
  final String description;
  final String buttonLabel;

  const WelcomePage({
    super.key,
    required this.onTap,
    required this.description,
    required this.title,
    required this.imagePath,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('lib/utils/resources/images/booktalklogo.svg', color: colors.primary, width: 150,),
              Container(
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                ),
                child: Image.asset(
                  imagePath,
                ),
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: text.titleMedium?.copyWith(color: colors.onBackground),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: text.headlineLarge!.copyWith(color: colors.outline),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              MainPrimaryButton(label: buttonLabel, icon: MdiIcons.arrowRight, onTap: onTap,),
            ],
          ),
        ),
      ),
    );
  }
}
