import 'package:booktalk_frontend/data/urls/conversation_urls.dart';
import 'package:booktalk_frontend/models/conversation.dart';
import 'package:booktalk_frontend/models/message.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'conversation_client.g.dart';

@RestApi()
abstract class ConversationClient {
  factory ConversationClient(Dio dio, {String baseUrl}) = _ConversationClient;

  @GET(ConversationUrls.getConversations)
  Future<List<Conversation>> getConversations(
    @Query('club_id') int clubId,
  );

  @GET(ConversationUrls.getMessages)
  Future<List<Message>> getMessages(
    @Query('conversation_id') int conversationId,
  );

  @POST(ConversationUrls.createConversation)
  Future<Conversation> createConversation(
    @Body() Map<String, dynamic> conversation,
  );

  @POST(ConversationUrls.createMessage)
  Future<Message> createMessage(
    @Body() Map<String, dynamic> message,
  );

}
