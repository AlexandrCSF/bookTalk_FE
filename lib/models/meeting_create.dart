import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_create.freezed.dart';
part 'meeting_create.g.dart';

@freezed
abstract class MeetingCreate with _$MeetingCreate {

  const factory MeetingCreate({
    required String name,
    required String date,
    required String time,
    required String location,
  }) = _MeetingCreate;

  factory MeetingCreate.fromJson(Map<String, dynamic> json) => _$MeetingCreateFromJson(json);

}