import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:booktalk_frontend/pages/discussion_list_page/widgets/create_discussion_dialog.dart';
import 'package:booktalk_frontend/viewmodels/discussion_list_viewmodel.dart';
import 'package:booktalk_frontend/viewmodels/profile_viewmodel.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'widgets/discussion_card.dart';

@RoutePage()
class DiscussionListPage extends StatefulWidget {
  final int clubId;

  const DiscussionListPage({
    super.key,
    required this.clubId,
  });

  @override
  State<DiscussionListPage> createState() => _DiscussionListPageState();
}

class _DiscussionListPageState extends State<DiscussionListPage> {

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;
    final profileProvider = Provider.of<ProfileViewModel>(context);
    return ChangeNotifierProvider<DiscussionListViewModel>(
      create: (BuildContext context) =>
          DiscussionListViewModel(clubId: widget.clubId)..loadConversations(),
      child: Consumer<DiscussionListViewModel>(
        builder: (context, provider, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: colors.background,
              elevation: 0,
              surfaceTintColor: colors.background,
              leading: AutoLeadingButton(
                color: colors.primary,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CreateDiscussionDialog(
                            titleController: provider.titleController,
                            descriptionController:
                                provider.descriptionController,
                            onTap: () => provider.createDiscussion(profileProvider.userId),
                          );
                        },
                      );
                    },
                    icon: Icon(
                      MdiIcons.plus,
                      color: colors.primary,
                    ),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListView.builder(
                itemCount: provider.conversationList.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                      child: Text(
                        "Обсуждения",
                        style: text.headlineLarge
                            ?.copyWith(color: colors.onSurface),
                      ),
                    );
                  } else {
                    return DiscussionCard(
                      conversation: provider.conversationList[index - 1],
                      onTap: () {
                        context.router.navigate(
                          DiscussionRoute(
                            description: provider
                                .conversationList[index - 1].description,
                            title: provider.conversationList[index - 1].title,
                            id: provider.conversationList[index - 1].id,
                            createdBy:
                                provider.conversationList[index - 1].createdBy,
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
