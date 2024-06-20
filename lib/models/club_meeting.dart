import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_meeting.freezed.dart';
part 'club_meeting.g.dart';

@freezed
abstract class ClubMeeting with _$ClubMeeting {

  const factory ClubMeeting({
    required int id,
    required String name,
    required String date,
    required String time,
    required String location,
    required int club,
    required bool isSubscribed,
    required bool isAdministrator,
    required int numOfAttender,
  }) = _ClubMeeting;

  factory ClubMeeting.fromJson(Map<String, dynamic> json) => _$ClubMeetingFromJson(json);

}
