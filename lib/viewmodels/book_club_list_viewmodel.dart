import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:flutter/material.dart';


class BookClubListViewModel extends ChangeNotifier {

  final ClubRepository _repository = getIt.get<ClubRepository>();

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  String _onError = '';
  String get onError => _onError;

  List<ClubCard> _subscriptionsList = [];
  UnmodifiableListView<ClubCard> get subscriptionList => UnmodifiableListView(_subscriptionsList);

  List<ClubCard> _recommendationList = [];
  UnmodifiableListView<ClubCard> get recommendationList => UnmodifiableListView(_recommendationList);

  List<ClubCard> _administratedList = [];
  UnmodifiableListView<ClubCard> get administratedList => UnmodifiableListView(_administratedList);

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _setError(String message) {
    _onError = message;
    //notifyListeners();
  }

  Future<void> getSubscriptionList(int userId) async {
    try {
      final result = await _repository.getSubscriptionList(userId);
      _subscriptionsList = result;
    } on ApiException catch (e) {
      _setError(e.message);
      _setLoading(false);
    } finally {
      _setLoading(false);
    }
  }

  Future<void> getRecommendationList(int userId) async {
    try {
      final result = await _repository.getRecommendationList(userId);
      _recommendationList = result;
    } on ApiException catch (e) {
      _setError(e.message);
      _setLoading(false);
    } finally {
      _setLoading(false);
    }
  }

  Future<void> getAdministratedList(int userId) async {
    try {
      final result = await _repository.getAdministratedList(userId);
      _administratedList = result;
    } on ApiException catch (e) {
      _setError(e.message);
      _setLoading(false);
    } finally {
      _setLoading(false);
    }
  }

}