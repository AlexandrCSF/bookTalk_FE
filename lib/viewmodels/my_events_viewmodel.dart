import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/my_events_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:flutter/material.dart';

class MyEventsViewModel extends ChangeNotifier {

  final MyEventsRepository _repository = getIt.get<MyEventsRepository>();

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

  Future<void> getAllMeetings(int userId) async {
    if(!_isLoading) {
      _setLoadingStatus(true);
    }
    try {
      List<Meeting> meetings = await _repository.getMeetingsForUser(userId);
      _allMeetings = getEvents(meetings);
      List<Meeting> todayMeetings = await _repository.getTodayMeetingsForUser(userId);
      _todayMeetings = getEvents(todayMeetings);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      _setLoadingStatus(false);
    }
  }

  Future<void> getTodayMeetings(int userId) async {
    if(!_isLoading) {
      _setLoadingStatus(true);
    }
    try {
      List<Meeting> meetings = await _repository.getMeetingsForUser(userId);
      _allMeetings = getEvents(meetings);
      List<Meeting> todayMeetings = await _repository.getTodayMeetingsForUser(userId);
      _todayMeetings = getEvents(todayMeetings);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      _setLoadingStatus(false);
    }
  }

  List<String> getEvents(List<Meeting> meetingList) {
    List<String> result = [];
    for(var event in meetingList) {
      result.add('${event.name} · ${event.date} · ${event.time} · ${event.location}');
      //_meetingMarkers[DateTime.parse(event.date)]!.add(event.name);
      _meetingMarkers.putIfAbsent(DateTime.parse(event.date), () => []).add(event.name);
    }
    return result;
  }

}