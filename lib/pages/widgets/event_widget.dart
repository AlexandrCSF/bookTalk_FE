import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
  final String event;

  const EventWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        event,
        style: text.headlineSmall?.copyWith(color: colors.outline),
      ),
    );
  }
}
