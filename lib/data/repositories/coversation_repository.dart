import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/conversation_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/conversation.dart';
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

}