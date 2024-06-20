import 'dart:io';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/data/services/club_client.dart';
import 'package:booktalk_frontend/data/services/genre_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/club_create.dart';
import 'package:booktalk_frontend/models/club_patch.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/subscribe.dart';
import 'package:booktalk_frontend/models/user.dart';
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

  Future<bool> isAdministrator(String clubId) async {
    try {
      final club = await _client.getClub(clubId);
      final administratedList = await _client.getAdministratedList();
      if (administratedList.contains(club)) {
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<ClubCard>> getAdministratedList() async {
    try {
      final result = await _client.getAdministratedList();
      for (int i = 0; i < result.length; i++) {
        result[i] = result[i].copyWith(
          numOfSubscribers: await getNumberOfClubMembers(
            '${result[i].id}',
          ),
        );
      }
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<ClubCard>> getRecommendationList() async {
    try {
      final result = await _client.getRecommendationList();
      for (int i = 0; i < result.length; i++) {
        result[i] = result[i].copyWith(
          numOfSubscribers: await getNumberOfClubMembers(
            '${result[i].id}',
          ),
        );
      }
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<ClubCard>> getSubscriptionList() async {
    try {
      final result = await _client.getMembershipList();
      for (int i = 0; i < result.length; i++) {
        result[i] = result[i].copyWith(
          numOfSubscribers: await getNumberOfClubMembers(
            '${result[i].id}',
          ),
        );
      }
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> subscribeToClub(String clubId) async {
    try {
      await _client.subscribeToClub(clubId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> unsubscribeFromClub(String clubId) async {
    try {
      await _client.unsubscribeFromClub(clubId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<Genre>> getClubGenres(String clubId) async {
    final club = await _client.getClub(clubId);
    final allGenres = await _genreClient.getGenreList();
    List<Genre> clubGenres = [];
    for (var genre in allGenres) {
      if (club.interests.contains(genre.id)) {
        clubGenres.add(genre);
      }
    }
    return clubGenres;
  }

  Future<ClubCard> createClub(ClubCreate clubCreate) async {
    try {
      final result = await _client.createClub(clubCreate.toJson());
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<ClubCard> editClub(ClubPatch clubPatch, String clubId) async {
    try {
      final result = await _client.editClub(clubPatch.toJson(), clubId);
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<int> getNumberOfClubMembers(String clubId) async {
    try {
      final listOfMembers = await getListOfClubMembers(clubId);
      return listOfMembers.length;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<List<User>> getListOfClubMembers(String clubId) async {
    try {
      final result = await _client.getListOfClubMembers(clubId);
      return result;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> deleteClub(String clubId) async {
    try {
      await _client.deleteClub(clubId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> uploadClubImage(File picture, int clubId) async {
    try {
      await _client.uploadImage(picture, clubId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

}
