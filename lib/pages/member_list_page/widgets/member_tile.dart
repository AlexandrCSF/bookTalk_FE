import 'package:flutter/material.dart';

class MemberTile extends StatelessWidget {
  const MemberTile({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: Image
                .asset('lib/images/base_avatar.png')
                .image,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Имя Фамилия',
              style: text.headlineLarge
                  ?.copyWith(color: colors.onSurface),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
