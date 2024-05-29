import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_meeting.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:flutter/material.dart';

class EventListViewModel extends ChangeNotifier {
  final _repository = getIt.get<MeetingRepository>();

  final int clubId;
  final bool isAdministrated;
  final List<Meeting> meetings;

  EventListViewModel({
    required this.clubId,
    required this.isAdministrated,
    required this.meetings,
  });

  List<Meeting> _meetingList = [];

  List<ClubMeeting> _clubMeetingList = [];
  UnmodifiableListView<ClubMeeting> get clubMeetingList =>
      UnmodifiableListView(_clubMeetingList);

  /*Future<void> initializeMeetings(int userId) async {
    try {
      _meetingList = meetings;
      final userMeetings = await _repository.getMeetingsForUser(userId);
      for (var meeting in meetings) {
        _repository.
        if (isAdministrated == true) {
          _clubMeetingList.add(
            ClubMeeting(
              id: meeting.id,
              name: meeting.name,
              date: meeting.date,
              time: meeting.time,
              location: meeting.location,
              club: meeting.club,
              isSubscribed: false,
              isAdministrator: true,
            ),
          );
        } else if (userMeetings.contains(meeting)) {
          _clubMeetingList.add(
            ClubMeeting(
              id: meeting.id,
              name: meeting.name,
              date: meeting.date,
              time: meeting.time,
              location: meeting.location,
              club: meeting.club,
              isSubscribed: true,
              isAdministrator: false,
            ),
          );
        } else {
          _clubMeetingList.add(
            ClubMeeting(
              id: meeting.id,
              name: meeting.name,
              date: meeting.date,
              time: meeting.time,
              location: meeting.location,
              club: meeting.club,
              isSubscribed: false,
              isAdministrator: false,
            ),
          );
        }
      }
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }*/

  Future<void> loadMeetings() async {
    try {
      final result = await _repository.getMeetingsForClub(clubId);
      //_meetingList = initializeMeetings(userId);
      // todo: isSubscribed and numOfAttenders
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }
}
