import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

class MyEventsViewModel extends ChangeNotifier {

  final MeetingRepository _repository = getIt.get<MeetingRepository>();

  List<String> _allMeetings = [];
  UnmodifiableListView<String> get allMeetings => UnmodifiableListView(_allMeetings);

  List<String> _todayMeetings = [];
  UnmodifiableListView<String> get todayMeetings => UnmodifiableListView(_todayMeetings);

  Map<DateTime, List<String>> _meetingMarkers = {};
  Map<DateTime, List<String>> get meetingMarkers => _meetingMarkers;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  void _setLoadingStatus(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void loadEvents(int userId) async {
    await getAllMeetings(userId);
    await getTodayMeetings(userId);
    notifyListeners();
  }

  Future<void> getAllMeetings(int userId) async {
    /*if(!_isLoading) {
      _setLoadingStatus(true);
    }*/
    try {
      List<Meeting> meetings = await _repository.getMeetingsForUser(userId);
      print(meetings);
      _allMeetings = getEvents(meetings);
      List<Meeting> todayMeetings = await _repository.getTodayMeetingsForUser(userId);
      print(todayMeetings);
      _todayMeetings = getEvents(todayMeetings);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      //notifyListeners();
      //_setLoadingStatus(false);
    }
  }

  Future<void> getTodayMeetings(int userId) async {
    /*if(!_isLoading) {
      _setLoadingStatus(true);
    }*/
    try {
      List<Meeting> meetings = await _repository.getMeetingsForUser(userId);
      _allMeetings = getEvents(meetings);
      List<Meeting> todayMeetings = await _repository.getTodayMeetingsForUser(userId);
      _todayMeetings = getEvents(todayMeetings);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      //_setLoadingStatus(false);
    }
  }

  List<String> getEvents(List<Meeting> meetingList) {
    List<String> result = [];
    for(var event in meetingList) {
      DateTime today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
      DateTime dateTime = DateTime.parse(event.date);
      DateTime formattedDateTime = DateTime.utc(dateTime.year, dateTime.month, dateTime.day);
      print(formattedDateTime);
      if (dateTime.isAfter(today)) {
        result.add(
            '${event.name} · ${event.date} · ${event.time} · ${event.location}');
        _meetingMarkers
            .putIfAbsent(formattedDateTime, () => [])
            .add(event.name);
      }
    }
    return result;
  }

  void authorize() {
    _authorized = true;
    //notifyListeners();
  }

  void unauthorize() {
    _authorized = false;
    _allMeetings = [];
    _todayMeetings = [];
    //notifyListeners();
  }

  bool _authorized = getIt.get<SecureStorage>().isAuthorized();
  bool get authorized => _authorized;

}