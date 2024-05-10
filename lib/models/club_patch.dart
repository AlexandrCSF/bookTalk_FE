import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_patch.freezed.dart';
part 'club_patch.g.dart';

@freezed
abstract class ClubPatch with _$ClubPatch {

  const factory ClubPatch({
    required String name,
    required String description,
    @JsonKey(name: 'city_fias') required String cityFias,
    required int admin,
  }) = _ClubPatch;

  factory ClubPatch.fromJson(Map<String, dynamic> json) => _$ClubPatchFromJson(json);

}