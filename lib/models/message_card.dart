import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_card.freezed.dart';
part 'message_card.g.dart';

@freezed
abstract class MessageCard with _$MessageCard {

  const factory MessageCard({
    required int id,
    required int conversation,
    required String firstName,
    required String lastName,
    //todo: add profile image
    required String text,
  }) = _MessageCard;

  factory MessageCard.fromJson(Map<String, dynamic> json) => _$MessageCardFromJson(json);

}
