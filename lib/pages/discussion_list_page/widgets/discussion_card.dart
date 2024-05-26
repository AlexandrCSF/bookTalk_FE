import 'package:booktalk_frontend/models/conversation.dart';
import 'package:flutter/material.dart';

class DiscussionCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Conversation conversation;

  const DiscussionCard({
    super.key,
    this.onTap,
    required this.conversation,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Card(
          surfaceTintColor: colors.surface,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            side: BorderSide(
              color: colors.primary,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  conversation.title,
                  style:
                      text.headlineLarge?.copyWith(color: colors.onBackground),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    conversation.description,
                    style: text.bodySmall?.copyWith(color: colors.outline),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
