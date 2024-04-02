import 'package:flutter/material.dart';

class ClubDescription extends StatelessWidget {

  final String description;

  const ClubDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        subtitle: Text(description,
          style: text.headlineSmall?.copyWith(
            color: colors.outline,
          ),
        ),
      ),
    );
  }
}
