import 'package:flutter/material.dart';

import '../../widgets/tag_widget.dart';

class ClubTags extends StatelessWidget {

  final List<String> tags;

  const ClubTags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9),
      child: Wrap(
        children: [
          for (String tag in tags)
            TagWidget(
              tag: tag,
            ),
        ],
      ),
    );
  }
}
