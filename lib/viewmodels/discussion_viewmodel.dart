import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/data/repositories/conversation_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/conversation.dart';
import 'package:booktalk_frontend/models/message.dart';
import 'package:booktalk_frontend/models/message_card.dart';
import 'package:booktalk_frontend/models/message_create.dart';
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

  final _messageController = TextEditingController();
  TextEditingController get messageController => _messageController;

  List<MessageCard> _messages = [];
  UnmodifiableListView<MessageCard> get messages =>
      UnmodifiableListView(_messages);

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  Future<void> loadMessages() async {
    _messages = [];
    try {
      final conversationAuthor = await _authRepository.getUserData(createdBy);
      _firstName = conversationAuthor.firstName;
      _lastName = conversationAuthor.lastName;
      notifyListeners();
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

  // todo: userId
  Future<void> createComment(userId) async {
    try {
      /*Map<String, dynamic> message = {
        'conversation': conversationId,
        'author': userId,
        'text': _messageController.text,
      };*/
      MessageCreate messageCreate = MessageCreate(
        conversation: conversationId,
        author: userId,
        text: _messageController.text,
      );
      print(messageCreate);
      await _repository.createMessage(messageCreate);
      await loadMessages();
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }
}
