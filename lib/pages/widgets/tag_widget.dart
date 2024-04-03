import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String tag;

  const TagWidget({
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
        border: Border.all(
          color: colors.primary,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(11, 4, 11, 4),
        child: Text(
          tag,
          style: text.labelMedium?.copyWith(color: colors.primary),
        ),
      ),
    );
  }
}
