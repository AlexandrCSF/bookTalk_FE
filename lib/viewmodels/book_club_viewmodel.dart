import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:flutter/material.dart';

class BookClubViewModel extends ChangeNotifier {

  final _repository = getIt.get<ClubRepository>();

  ClubCard? _club;
  ClubCard? get club => _club;

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
  List<String> get events => events;

  void _setLoadingStatus(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> getGenres(List<int> genreIds, String clubId) async {
    final clubGenres = await _repository.getClubGenres(clubId);
    for(var genre in clubGenres) {
      _genres.add(genre.name);
    }
  }

  Future<void> getClubData(String clubId, int userId) async {
    try {
      _club = await _repository.getClubData(clubId);
      _isAdministrator = await _repository.isAdministrator(clubId, userId);
      if(!_isAdministrator) {
        _isSubscribed = await _repository.isSubscribed(clubId, userId);
      }
      await getGenres(_club!.interests, clubId);
      getEvents();
    } on ApiException catch (e) {
      debugPrint(e.message);
    }
    _setLoadingStatus(false);
  }

  void getEvents() {
    for(var event in _club!.meetings) {
      _events.add('${event.name} · ${event.date} · ${event.time} · ${event.location}');
    }
  }

  void setSubscriptionStatus(bool status) {
    _isSubscribed = status;
  }

  Future<void> subscribe(String clubId) async {
    _isSubscribed = !_isSubscribed;
  }

}
