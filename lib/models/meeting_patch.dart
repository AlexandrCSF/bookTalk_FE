import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_patch.freezed.dart';
part 'meeting_patch.g.dart';

@freezed
abstract class MeetingPatch with _$MeetingPatch {

  const factory MeetingPatch({
    required String name,
    required String date,
    required String time,
    required String location,
  }) = _MeetingPatch;

  factory MeetingPatch.fromJson(Map<String, dynamic> json) => _$MeetingPatchFromJson(json);

}