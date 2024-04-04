import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EditAvatarWidget extends StatelessWidget {
  final Image img;

  const EditAvatarWidget({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 10),
            child: CircleAvatar(
              radius: 72,
              backgroundImage: img.image,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors.onPrimary,
              border: Border.all(
                color: colors.primary,
              ),
            ),
            child: Icon(
              MdiIcons.plus,
              color: colors.primary,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
