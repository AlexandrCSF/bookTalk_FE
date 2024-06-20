import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ClubCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final int members;
  final VoidCallback? onTap;

  const ClubCard({
    super.key,
    this.onTap,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.members,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 24 / 10,
        child: Card(
          surfaceTintColor: colors.surface,
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            side: BorderSide(
              color: colors.primary,
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 50.0, top: 15.0, bottom: 15.0),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: imageUrl.isEmpty
                            ? Image.asset(
                                'lib/utils/resources/images/base_club_avatar.png',
                                width: 80,
                                height: 120,
                                fit: BoxFit.fitHeight,
                              )
                            : Image.network(
                                imageUrl,
                                width: 80,
                                height: 120,
                                fit: BoxFit.fitHeight,
                              )),
                    const SizedBox(
                      width: 15,
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: text.headlineLarge
                                ?.copyWith(color: colors.onBackground),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            description,
                            style:
                                text.bodySmall?.copyWith(color: colors.outline),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                          Text(
                            _numOfMembers(members),
                            style:
                                text.bodyLarge?.copyWith(color: colors.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    MdiIcons.arrowRight,
                    size: 26,
                    color: colors.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _numOfMembers(int num) {
    if (members % 100 == 11 ||
        members % 100 == 12 ||
        members % 100 == 13 ||
        members % 100 == 14 ||
        members % 10 > 4 ||
        members % 10 == 0) {
      return '$num участников';
    } else if (members % 10 == 1) {
      return '$num участник';
    } else {
      return '$num участника';
    }
  }
}
