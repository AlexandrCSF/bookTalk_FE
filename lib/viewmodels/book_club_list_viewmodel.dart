import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:flutter/material.dart';


class BookClubListViewModel extends ChangeNotifier {

  final ClubRepository _repository = getIt.get<ClubRepository>();

  Future<void> loadClubs() async {
    await getSubscriptionList();
    await getRecommendationList();
    await getAdministratedList();
    _setLoading(false);
  }

  Future<void> getSubscriptionList() async {
    try {
      print('request');
      final result = await _repository.getSubscriptionList();
      print(result);
      _subscriptionsList = result;
    } on ApiException catch (e) {
      _setError(e.message);
      _setLoading(false);
    }
  }

  Future<void> getRecommendationList() async {
    try {
      print('request');
      final result = await _repository.getRecommendationList();
      print(result);
      _recommendationList = result;
    } on ApiException catch (e) {
      _setError(e.message);
      _setLoading(false);
    }
  }

  Future<void> getAdministratedList() async {
    try {
      print('request');
      final result = await _repository.getAdministratedList();
      print(result);
      _administratedList = result;
    } on ApiException catch (e) {
      _setError(e.message);
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void _setError(String message) {
    _onError = message;
    notifyListeners();
  }

  void authorize() {
    _authorized = true;
  }

  void unauthorize() {
    _authorized = false;
    _subscriptionsList = [];
    _recommendationList = [];
    _administratedList = [];
  }

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

  bool _authorized = getIt.get<SecureStorage>().isAuthorized();
  bool get authorized => _authorized;

}