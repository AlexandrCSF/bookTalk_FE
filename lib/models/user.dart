import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {

  const factory User({
    required int id,
    @JsonKey(name: 'is_superuser') required bool isSuperuser,
    required String username,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'date_joined') required String dateJoined,
    required String email,
    required String city,
    required String uuid,
    @JsonKey(name: 'refresh_token') required String refresh_token,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}