import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/club_search.dart';
import 'package:flutter/material.dart';

class SearchViewModel extends ChangeNotifier {

  final _repository = getIt.get<ClubRepository>();

  Future<List<ClubCard>> searchClubs(String query) async {
    List<ClubCard> result = [];
    try {
      ClubSearch clubSearch = ClubSearch(search: query);
      result = await _repository.searchClubs(clubSearch);
      return result;
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
    return result;
  }

}