import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_create.freezed.dart';
part 'club_create.g.dart';

@freezed
abstract class ClubCreate with _$ClubCreate {

  const factory ClubCreate({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'admin_id') required int adminId,
    @JsonKey(name: 'city_fias') required String cityFias,
  }) = _ClubCreate;

  factory ClubCreate.fromJson(Map<String, dynamic> json) => _$ClubCreateFromJson(json);

}