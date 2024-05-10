import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe.freezed.dart';
part 'subscribe.g.dart';

@freezed
abstract class Subscribe with _$Subscribe {

  const factory Subscribe({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'club_id') required int clubId,
  }) = _Subscribe;

  factory Subscribe.fromJson(Map<String, dynamic> json) => _$SubscribeFromJson(json);

}
