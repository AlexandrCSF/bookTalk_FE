import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/discussion_page/widgets/create_comment_dialog.dart';
import 'package:booktalk_frontend/pages/widgets/main_primary_button.dart';
import 'package:booktalk_frontend/viewmodels/discussion_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'widgets/comment_card.dart';

@RoutePage()
class DiscussionPage extends StatefulWidget {

  final int id;
  final String title;
  final String description;
  final int createdBy;

  const DiscussionPage({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.createdBy,
  });

  @override
  State<DiscussionPage> createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {

  @override
  Widget build(BuildContext context) {
    final colors = Theme
        .of(context)
        .colorScheme;
    final text = Theme
        .of(context)
        .textTheme;
    final profileProvider = Provider.of<ProfileViewModel>(context);
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
        child: ChangeNotifierProvider<DiscussionViewModel>(
          create: (BuildContext context) =>
          DiscussionViewModel(
              conversationId: widget.id, createdBy: widget.createdBy)
            ..loadMessages(),
          child: Consumer<DiscussionViewModel>(
            builder: (context, provider, child) {
              return Stack(
                children: [
                  ListView.builder(
                    itemCount: 3 + provider.messages.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 20.0, top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                Image
                                    .asset('lib/utils/resources/images/base_avatar.png')
                                    .image,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  '${provider.firstName} ${provider.lastName}',
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
                          widget.title,
                          style: text.titleMedium?.copyWith(
                              color: colors.onSurface),
                        );
                      }
                      if (index == 2) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0),
                          child: Text(
                            widget.description,
                            style: text.bodyMedium?.copyWith(
                                color: colors.outline),
                          ),
                        );
                      }
                      if (index == (2 + provider.messages.length)) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 70.0),
                          child: CommentCard(
                            message: provider.messages[index - 3],
                          ),
                        );
                      } else {
                        return CommentCard(
                          message: provider.messages[index - 3],
                        );
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: MainPrimaryButton(
                      label: 'Написать комментарий',
                      icon: MdiIcons.pencil,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CreateCommentDialog(
                              controller: provider.messageController,
                              onTap: () => provider.createComment(profileProvider.userId),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),

    );
  }
}
