import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/data/services/meeting_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/models/meeting_create.dart';
import 'package:booktalk_frontend/models/meeting_patch.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:dio/dio.dart';

class MeetingRepository {

  final _client = getIt.get<MeetingClient>();
  final _clubClient = getIt.get<ClubClient>();

  Future<List<Meeting>> getMeetingsForUser(int userId) async {
    try {
      return await _client.getListOfMeetingsForUser(userId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<Meeting>> getTodayMeetingsForUser(int userId) async {
    try {
      final List<Meeting> allMeetings = await _client.getListOfMeetingsForUser(userId);
      List<Meeting> todayMeetings = [];
      DateTime today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
      for (var meeting in allMeetings) {
        if (DateTime.parse(meeting.date) == today) {
          todayMeetings.add(meeting);
        }
      }
      return todayMeetings;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<int> getNumberOfMeetingAttenders(int meetingId) async {
    List<User> attenders = await _client.getListOfAttenders(meetingId);
    return attenders.length;
  }

  Future<List<Meeting>> getMeetingsForClub(int clubId) async {
    try {
      return await _clubClient.getMeetingsList('$clubId');
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> attendMeeting(int meetingId) async {
    try {
      await _client.attendMeeting(meetingId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> wontAttendMeeting(int meetingId) async {
    try {
      await _client.wontAttendMeeting(meetingId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> createMeeting(MeetingCreate meeetingCreate, String clubId) async {
    try {
      MeetingCreate response = await _client.createMeeting(meeetingCreate.toJson(), clubId);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse)
      throw HandleException.handleException(e);
    }
  }

  Future<void> editMeeting(MeetingPatch meetingPatch, int meetingId) async {
    try {
      await _client.editMeeting(meetingPatch.toJson(), meetingId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> deleteEvent(int meetingId) async {
    try {
      await _client.deleteMeeting(meetingId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

}