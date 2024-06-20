import 'dart:io';

import 'package:booktalk_frontend/data/urls/club_urls.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/club_create.dart';
import 'package:booktalk_frontend/models/club_patch.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/models/subscribe.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'club_client.g.dart';

@RestApi()
abstract class ClubClient {
  factory ClubClient(Dio dio, {String baseUrl}) = _ClubClient;

  @GET(ClubUrls.getClubById)
  Future<ClubCard> getClub(
    @Query('club_id') String clubId,
  );

  @GET(ClubUrls.getMembershipForUser)
  Future<List<ClubCard>> getMembershipList();

  @GET(ClubUrls.getRecommendationForUser)
  Future<List<ClubCard>> getRecommendationList();

  @GET(ClubUrls.getAdministratedClubsForUser)
  Future<List<ClubCard>> getAdministratedList();

  @GET(ClubUrls.getMeetingsByClubId)
  Future<List<Meeting>> getMeetingsList(
    @Query('club_id') String clubId,
  );

  @GET(ClubUrls.getListOfMembersByClubId)
  Future<List<User>> getListOfClubMembers(
    @Query('club_id') String clubId,
  );

  @PUT(ClubUrls.createClub)
  Future<ClubCard> createClub(
    @Body() Map<String, dynamic> clubCreate,
  );

  @PATCH(ClubUrls.editClub)
  Future<ClubCard> editClub(
    @Body() Map<String, dynamic> clubPatch,
    @Query('club_id') String clubId,
  );

  @DELETE(ClubUrls.deleteClub)
  Future<ClubCard> deleteClub(
    @Query('club_id') String clubId,
  );

  @POST(ClubUrls.subscribeToClub)
  Future<void> subscribeToClub(
    @Query('club_id') String clubId,
  );

  @POST(ClubUrls.unsubscribeFromClub)
  Future<void> unsubscribeFromClub(
    @Query('club_id') String clubId,
  );

  @POST(ClubUrls.searchClubs)
  Future<List<ClubCard>> searchClubs(
    @Body() Map<String, dynamic> clubSearch,
  );

  @POST(ClubUrls.uploadClubPicture)
  @MultiPart()
  Future<void> uploadImage(
    @Part() File picture,
      @Part() int club_id,
  );
}
