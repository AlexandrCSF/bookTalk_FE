import 'package:booktalk_frontend/models/message_card.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final MessageCard message;

  const CommentCard({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Card(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: message.picture.isEmpty
                        ? Image.asset('lib/utils/resources/images/base_avatar.png')
                        .image
                        : Image.network(message.picture).image,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      '${message.firstName} ${message.lastName}',
                      style: text.headlineMedium
                          ?.copyWith(color: colors.onSurface),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  message.text,
                  style: text.bodyMedium?.copyWith(color: colors.outline),
                ),
              ),
            ],
          ),
        ));
  }
}
