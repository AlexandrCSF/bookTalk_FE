abstract class MeetingUrls {

  /// GET
  static const String getListOfAttenders = '/meetings/meeting/';
  static const String getListOfMeetingsForUser = '/meetings/attend/';

  /// POST
  static const String attendMeeting = '/meetings/attend/';
  static const String wontAttendMeeting = '/meetings/wont_attend/';

  /// PUT
  static const String createMeeting = '/meetings/meeting/';

  /// PATCH
  static const String editMeeting = '/meetings/meeting/';

  /// DELETE
  static const String deleteMeeting = '/meetings/meeting/';

}