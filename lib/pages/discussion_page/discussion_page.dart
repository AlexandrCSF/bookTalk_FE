import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/analytics/analytics.dart';
import 'package:booktalk_frontend/pages/discussion_page/widgets/create_comment_dialog.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'widgets/comment_card.dart';

@RoutePage()
class DiscussionPage extends StatefulWidget {
  const DiscussionPage({super.key});

  @override
  State<DiscussionPage> createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {
  void _createComment() {
    showDialog(
      context: context,
      builder: (context) {
        return const CreateCommentDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.background,
        elevation: 0,
        surfaceTintColor: colors.background,
        leading: AutoLeadingButton(
          color: colors.primary,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 3 + 7,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              Image.asset('lib/images/base_avatar.png').image,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Имя Фамилия',
                            style: text.headlineLarge
                                ?.copyWith(color: colors.onSurface),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                if (index == 1) {
                  return Text(
                    'Заголовок обсуждения',
                    style: text.titleMedium?.copyWith(color: colors.onSurface),
                  );
                }
                if (index == 2) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Text(
                      'Также как базовый вектор развития способствует подготовке и '
                      'реализации системы массового участия.',
                      style: text.bodyMedium?.copyWith(color: colors.outline),
                    ),
                  );
                }
                if (index == 9) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 70.0),
                    child: CommentCard(),
                  );
                } else {
                  return const CommentCard();
                }
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainPrimaryButton(
                label: 'Написать комментарий',
                icon: MdiIcons.pencil,
                onTap: _createComment,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
