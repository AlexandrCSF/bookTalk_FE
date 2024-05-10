import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation.freezed.dart';
part 'conversation.g.dart';

@freezed
abstract class Conversation with _$Conversation {

  const factory Conversation({
    required int id,
    required String title,
    required String description,
    @JsonKey(name: 'created_by') required int createdBy,
    required int club,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);

}
