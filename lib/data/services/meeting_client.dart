import 'package:booktalk_frontend/data/urls/meeting_urls.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/models/meeting_create.dart';
import 'package:booktalk_frontend/models/meeting_patch.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'meeting_client.g.dart';

@RestApi()
abstract class MeetingClient {
  factory MeetingClient(Dio dio, {String baseUrl}) = _MeetingClient;

  @GET(MeetingUrls.getListOfAttenders)
  Future<List<User>> getListOfAttenders(
    @Query('meeting_id') int meetingId,
  );

  @GET(MeetingUrls.getListOfMeetingsForUser)
  Future<List<Meeting>> getListOfMeetingsForUser(
    @Query('user_id') int userId,
  );

  @POST(MeetingUrls.attendMeeting)
  Future<void> attendMeeting(
    @Query('meeting_id') int meetingId,
  );

  @POST(MeetingUrls.wontAttendMeeting)
  Future<void> wontAttendMeeting(
      @Query('meeting_id') int meetingId,
      );

  @PUT(MeetingUrls.createMeeting)
  Future<MeetingCreate> createMeeting(
    @Body() Map<String, dynamic> meetingCreate,
    @Query('club_id') String clubId,
  );

  @PATCH(MeetingUrls.editMeeting)
  Future<Meeting> editMeeting(
    @Body() Map<String, dynamic> meetingPatch,
    @Query('meeting_id') int meetingId,
  );

  @DELETE(MeetingUrls.deleteMeeting)
  Future<Meeting> deleteMeeting(
    @Query('meeting_id') int meetingId,
  );
}
