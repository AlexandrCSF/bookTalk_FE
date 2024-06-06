import 'package:booktalk_frontend/pages/widgets/chosen_tag_widget.dart';
import 'package:booktalk_frontend/pages/widgets/tag_widget.dart';
import 'package:flutter/material.dart';

class ClickableTagWidget extends StatefulWidget {
  final String tag;
  final bool isChosen;
  final VoidCallback onTap;

  const ClickableTagWidget({
    super.key,
    required this.tag,
    required this.isChosen,
    required this.onTap,
  });

  @override
  State<ClickableTagWidget> createState() => _ClickableTagWidgetState();
}

class _ClickableTagWidgetState extends State<ClickableTagWidget> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: widget.onTap,
      child: widget.isChosen
          ? ChosenTagWidget(tag: widget.tag)
          : TagWidget(tag: widget.tag),
      /*child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: colors.primary,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(11, 4, 11, 4),
          child: Text(
            widget.tag,
            style: text.labelMedium?.copyWith(color: colors.primary),
          ),
        ),
      ),*/
    );
    ;
  }
}
