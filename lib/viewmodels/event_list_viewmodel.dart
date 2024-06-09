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

  EventListViewModel({
    required this.clubId,
    required this.isAdministrated,
  });

  List<ClubMeeting> _clubMeetingList = [];
  UnmodifiableListView<ClubMeeting> get clubMeetingList =>
      UnmodifiableListView(_clubMeetingList);

  Future<void> loadMeetings(int userId) async {
    try {
      final userMeetings = await _repository.getMeetingsForUser(userId);
      final clubMeetings = await _repository.getMeetingsForClub(clubId);
      for (var meeting in clubMeetings) {
        int numOfAttenders = await _repository.getNumberOfMeetingAttenders(meeting.id);
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
              numOfAttender: numOfAttenders,
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
              numOfAttender: numOfAttenders,
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
              numOfAttender: numOfAttenders,
            ),
          );
        }
      }
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

  Future<void> subscribe(int meetingId) async {
    try {
      await _repository.attendMeeting(meetingId);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

  // todo: add unsubscribe
  Future<void> unsubscribe(int meetingId) async {

  }

}