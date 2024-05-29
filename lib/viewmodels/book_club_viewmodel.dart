import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:flutter/material.dart';

class BookClubViewModel extends ChangeNotifier {

  final _repository = getIt.get<ClubRepository>();

  final int clubId;
  BookClubViewModel({required this.clubId});

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
  List<String> get events => _events;

  void _setLoadingStatus(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> getGenres(List<Genre> genreIds, String clubId) async {
    //final clubGenres = await _repository.getClubGenres(clubId);
    if (_genres.isEmpty) {
      for (var genre in genreIds) {
        _genres.add(genre.name);
      }
    }
  }

  // todo: remove userId
  Future<void> getClubData(int userId) async {
    String id = '$clubId';
    try {
      _club = await _repository.getClubData(id);
      print(_club);
      _isAdministrator = await _repository.isAdministrator(id, userId);
      if(!_isAdministrator) {
        _isSubscribed = await _repository.isSubscribed(id, userId);
      }
      await getGenres(_club!.interests, id);
      getEvents();
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
            '${event.name} · ${event.date} · ${event.time} · ${event.location}');
      }
    }
  }

  void setSubscriptionStatus(bool status) {
    _isSubscribed = status;
  }

  Future<void> subscribe(String clubId) async {
    _isSubscribed = !_isSubscribed;
  }

}
