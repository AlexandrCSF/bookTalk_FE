import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/data/repositories/conversation_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/conversation.dart';
import 'package:booktalk_frontend/models/message.dart';
import 'package:booktalk_frontend/models/message_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DiscussionViewModel extends ChangeNotifier {
  final _repository = getIt.get<ConversationRepository>();
  final _authRepository = getIt.get<AuthRepository>();

  final int conversationId;
  final int createdBy;

  DiscussionViewModel({
    required this.conversationId,
    required this.createdBy,
  });

  String _firstName = '';
  String get firstName => _firstName;

  String _lastName = '';
  String get lastName => _lastName;

  List<MessageCard> _messages = [];
  UnmodifiableListView<MessageCard> get messages =>
      UnmodifiableListView(_messages);

  Future<void> loadMessages() async {
    try {
      final conversationAuthor = await _authRepository.getUserData(createdBy);
      _firstName = conversationAuthor.firstName;
      _lastName = conversationAuthor.lastName;
      final result =
          await _repository.getMessagesForConversation(conversationId);
      for (var message in result) {
        final author = await _authRepository.getUserData(message.author);
        _messages.add(MessageCard(
            id: message.id,
            conversation: message.conversation,
            firstName: author.firstName,
            lastName: author.lastName,
            text: message.text));
      }
      print(_messages);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }
}
