import 'package:booktalk_frontend/models/user.dart';
import 'package:flutter/material.dart';

class MemberTile extends StatelessWidget {
  final User user;

  const MemberTile({super.key, required this.user});

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
              backgroundImage: user.picture.isEmpty
                  ? Image.asset('lib/utils/resources/images/base_avatar.png')
                      .image
                  : Image.network(user.picture).image),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              '${user.firstName} ${user.lastName}',
              style: text.headlineLarge?.copyWith(color: colors.onSurface),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
