import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_token.freezed.dart';
part 'free_token.g.dart';

@freezed
abstract class FreeToken with _$FreeToken {

  const factory FreeToken({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _FreeToken;

  factory FreeToken.fromJson(Map<String, dynamic> json) =>
      _$FreeTokenFromJson(json);

}
