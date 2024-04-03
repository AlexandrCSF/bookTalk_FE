import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChosenTagWidget extends StatelessWidget {
  final String tag;

  const ChosenTagWidget({
    super.key,
    required this.tag
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colors.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(11, 4, 11, 4),
        child: Text(
          tag,
          style: text.labelMedium?.copyWith(color: colors.background),
        ),
      ),
    );
  }
}