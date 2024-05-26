import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../analytics/analytics.dart';

class CreateCommentDialog extends StatefulWidget {

  final TextEditingController controller;
  final VoidCallback onTap;

  const CreateCommentDialog({
    super.key,
    required this.controller,
    required this.onTap,
  });

  @override
  State<CreateCommentDialog> createState() => _CreateCommentDialogState();
}

class _CreateCommentDialogState extends State<CreateCommentDialog> {

  @override
  Widget build(BuildContext context) {
    final colors = Theme
        .of(context)
        .colorScheme;
    return AlertDialog(
      surfaceTintColor: colors.surface,
      content: Container(
        height: 300,
        width: 320,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFieldWidget(
              label: 'Добавить комментарий',
              hintText: 'Введите комментарий',
              maxLines: 6,
              controller: widget.controller,
            ),
            MainPrimaryButton(
              label: 'Добавить',
              icon: MdiIcons.check,
              onTap: () {
                widget.onTap();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
