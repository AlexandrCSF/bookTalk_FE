import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String regularText;
  final String boldText;

  const InfoText({
    super.key,
    required this.regularText,
    required this.boldText,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Text.rich(
      TextSpan(children: [
        TextSpan(text: regularText),
        TextSpan(
          text: boldText,
          style: text.headlineMedium!.copyWith()
        )
      ]),
      textAlign: TextAlign.center,
      style: text.headlineSmall!.copyWith(color: colors.onBackground),
    );
  }
}
