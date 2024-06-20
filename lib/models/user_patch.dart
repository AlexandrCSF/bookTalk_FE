import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_patch.freezed.dart';
part 'user_patch.g.dart';

@freezed
abstract class UserPatch with _$UserPatch {

  const factory UserPatch({
    required String username,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String city,
    required List<String> interests,
  }) = _UserPatch;

  factory UserPatch.fromJson(Map<String, dynamic> json) =>
      _$UserPatchFromJson(json);

}
