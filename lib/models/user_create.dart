import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_create.freezed.dart';
part 'user_create.g.dart';

@freezed
abstract class UserCreate with _$UserCreate {

  const factory UserCreate({
    required String username,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String city,
    required String password,
    required List<String> interests,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);

}
