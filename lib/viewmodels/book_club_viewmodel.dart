import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/utils/analytics/analytics.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:flutter/material.dart';

class BookClubViewModel extends ChangeNotifier {

  final _repository = getIt.get<ClubRepository>();

  final _analytics = getIt.get<Analytics>();

  void _setLoadingStatus(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void getGenres(List<Genre> genreIds) {
    if (_genres.isEmpty) {
      for (var genre in genreIds) {
        _genres.add(StringFormatting.getFormattedTag(genre.name));
      }
    }
  }

  Future<void> getClubData(int userId) async {
    String id = '$clubId';
    try {
      _club = await _repository.getClubData(id);
      print(_club);
      _isAdministrator = await _repository.isAdministrator(id, userId);
      if(!_isAdministrator) {
        _isSubscribed = await _repository.isSubscribed(id, userId);
      }
      getGenres(_club!.interests);
      getEvents();
      getListOfMembers();
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      _setLoadingStatus(false);
    }
  }

  void getEvents() {
    if (_events.isEmpty) {
      for (var event in _club!.meetings) {
        _events.add(
            '${event.name} · ${StringFormatting.getFormattedDateFromString(event.date)} · ${StringFormatting.getFormattedTimeFromString(event.time)} · ${event.location}');
      }
    }
  }

  Future<void> getListOfMembers() async {
    try {
      _members = await _repository.getListOfClubMembers('$clubId');
    } on ApiException catch (e) {
      debugPrint(e.message);
    }
  }

  void setSubscriptionStatus(bool status) {
    _isSubscribed = status;
  }

  Future<void> subscribe() async {
    await _repository.subscribeToClub('$clubId');
    _isSubscribed = true;
    _analytics.clubSubscription();
    notifyListeners();
  }

  Future<void> unsubscribe() async {
    await _repository.unsubscribeFromClub('$clubId');
    _isSubscribed = false;
    notifyListeners();
  }

  final int clubId;

  BookClubViewModel({required this.clubId});

  late ClubCard _club;
  ClubCard get club => _club;

  bool _isSubscribed = false;
  bool get isSubscribed => _isSubscribed;

  bool _isAdministrator = false;
  bool get isAdministrator => _isAdministrator;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  String _onErrorMessage = '';
  String get onErrorMessage => _onErrorMessage;

  List<String> _genres = [];
  List<String> get genres => _genres;

  List<String> _events = [];
  List<String> get events => _events;

  List<User> _members = [];
  List<User> get members => _members;

}
