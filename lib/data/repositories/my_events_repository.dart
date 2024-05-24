import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/meeting_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:dio/dio.dart';

class MyEventsRepository {

  final _client = getIt.get<MeetingClient>();

  Future<List<Meeting>> getMeetingsForUser(int userId) async {
    try {
      return await _client.getListOfMeetings(userId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<Meeting>> getTodayMeetingsForUser(int userId) async {
    try {
      final List<Meeting> allMeetings = await _client.getListOfMeetings(userId);
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

}