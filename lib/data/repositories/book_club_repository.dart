import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/data/services/genre_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/subscribe.dart';
import 'package:dio/dio.dart';

class ClubRepository {

  final _client = getIt.get<ClubClient>();
  final _userClient = getIt.get<AuthClient>();
  final _genreClient = getIt.get<GenreClient>();

  Future<ClubCard> getClubData(String clubId) async {
    return await _client.getClub(clubId);
  }

  Future<bool> isSubscribed(String clubId, int userId) async {
    try {
      final user = await _userClient.getUser(userId);
      final memberList = await _client.getListOfClubMembers(clubId);
      if (memberList.contains(user)) {
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<bool> isAdministrator(String clubId, int userId) async {
    try {
      final club = await _client.getClub(clubId);
      final administratedList = await _client.getAdministratedList(userId);
      if(administratedList.contains(club)) {
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<ClubCard>> getSubscriptionList(int userId) async {
    try {
      final result = await _client.getMembershipList(userId);
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<Subscribe> subscribeToClub(int userId, int clubId) async {
    final subscribe = Subscribe(userId: userId, clubId: clubId);
    try {
      Subscribe result = await _client.subscribeToClub(
        subscribe, userId, clubId,
      );
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<Genre>> getClubGenres(String clubId) async {
    final club = await _client.getClub(clubId);
    final allGenres = await _genreClient.getGenreList();
    List<Genre> clubGenres = [];
    for (var genre in allGenres) {
      if(club.interests.contains(genre.id)) {
        clubGenres.add(genre);
      }
    }
    return clubGenres;
  }

}
