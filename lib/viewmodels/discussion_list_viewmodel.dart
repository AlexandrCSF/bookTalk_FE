import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/conversation_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/conversation.dart';
import 'package:booktalk_frontend/models/conversation_create.dart';
import 'package:flutter/material.dart';

class DiscussionListViewModel extends ChangeNotifier {
  final _repository = getIt.get<ConversationRepository>();

  final int clubId;

  DiscussionListViewModel({required this.clubId});

  List<Conversation> _conversationList = [];
  UnmodifiableListView<Conversation> get conversationList =>
      UnmodifiableListView(_conversationList);

  final _titleController = TextEditingController();
  TextEditingController get titleController => _titleController;

  final _descriptionController = TextEditingController();
  TextEditingController get descriptionController => _descriptionController;

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
  }

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

  Future<void> createDiscussion(userId) async {
    try {
      ConversationCreate conversationCreate = ConversationCreate(
          title: _titleController.text,
          description: _descriptionController.text,
          createdBy: userId,
          club: clubId);
      print(conversationCreate);
      await _repository.createConversation(conversationCreate);
      await loadConversations();
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }
}
