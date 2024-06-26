import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/conversation_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/conversation.dart';
import 'package:booktalk_frontend/models/conversation_create.dart';
import 'package:booktalk_frontend/models/message.dart';
import 'package:booktalk_frontend/models/message_create.dart';
import 'package:dio/dio.dart';

class ConversationRepository {
  final _client = getIt.get<ConversationClient>();

  Future<List<Conversation>> getConversationForClub(int clubId) async {
    try {
      final result = await _client.getConversations(clubId);
      print(result);
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<Message>> getMessagesForConversation(int conversationId) async {
    try {
      final result = await _client.getMessages(conversationId);
      print(result);
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> createConversation(ConversationCreate conversation) async {
    try {
      _client.createConversation(conversation.toJson());
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> createMessage(MessageCreate message) async {
    try {
      _client.createMessage(message.toJson());
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }
}
