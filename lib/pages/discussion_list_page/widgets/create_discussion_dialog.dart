import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/pages/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../analytics/analytics.dart';

class CreateDiscussionDialog extends StatefulWidget {
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final VoidCallback onTap;

  const CreateDiscussionDialog({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.onTap,
  });

  @override
  State<CreateDiscussionDialog> createState() => _CreateDiscussionDialogState();
}

class _CreateDiscussionDialogState extends State<CreateDiscussionDialog> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return AlertDialog(
      surfaceTintColor: colors.surface,
      content: Container(
        height: 410,
        width: 320,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFieldWidget(
              label: 'Тема обсуждения',
              hintText: 'Введите тему',
              maxLines: 1,
              controller: widget.titleController,
            ),
            TextFieldWidget(
              label: 'Описание',
              hintText: 'Введите описание',
              maxLines: 6,
              controller: widget.descriptionController,
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
