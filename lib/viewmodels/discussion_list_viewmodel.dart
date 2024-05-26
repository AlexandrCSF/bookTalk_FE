import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/conversation_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/conversation.dart';
import 'package:flutter/material.dart';

class DiscussionListViewModel extends ChangeNotifier {

  final _repository = getIt.get<ConversationRepository>();

  final int clubId;
  DiscussionListViewModel({required this.clubId});

  List<Conversation> _conversationList = [];
  UnmodifiableListView<Conversation> get conversationList => UnmodifiableListView(_conversationList);

  Future<void> loadConversations() async {
    try {
      final result = await _repository.getConversationForClub(clubId);
      _conversationList = result;
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

}