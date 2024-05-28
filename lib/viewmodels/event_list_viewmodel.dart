import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:flutter/material.dart';

class EventListViewModel extends ChangeNotifier {

  final _repository = getIt.get<MeetingRepository>();

  final int clubId;
  EventListViewModel({required this.clubId});

  List<Meeting> _meetingList = [];
  UnmodifiableListView<Meeting> get meetingList => UnmodifiableListView(_meetingList);

  Future<void> loadMeetings() async {
    try {
      final result = await _repository.getMeetingsForClub(clubId);
      _meetingList = result;
      // todo: isSubscribed and numOfAttenders
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

}