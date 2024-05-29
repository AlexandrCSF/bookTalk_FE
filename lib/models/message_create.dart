import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_create.freezed.dart';
part 'message_create.g.dart';

@freezed
abstract class MessageCreate with _$MessageCreate {

  const factory MessageCreate({
    required int conversation,
    required int author,
    required String text,
  }) = _MessageCreate;

  factory MessageCreate.fromJson(Map<String, dynamic> json) => _$MessageCreateFromJson(json);

}
