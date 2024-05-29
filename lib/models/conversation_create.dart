import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_create.freezed.dart';
part 'conversation_create.g.dart';

@freezed
abstract class ConversationCreate with _$ConversationCreate {

  const factory ConversationCreate({
    required String title,
    required String description,
    @JsonKey(name: 'created_by') required int createdBy,
    required int club,
  }) = _ConversationCreate;

  factory ConversationCreate.fromJson(Map<String, dynamic> json) => _$ConversationCreateFromJson(json);

}
