import 'dart:io';

import 'package:booktalk_frontend/data/urls/auth_urls.dart';
import 'package:booktalk_frontend/models/free_token.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/models/user_create.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @GET(AuthUrls.getUser)
  Future<User> getUser(
    @Query('user_id') int userId,
  );

  @POST(AuthUrls.createUser)
  Future<User> createUser(
    @Query('uuid') String uuid,
    @Body() Map<String, dynamic> userCreate,
  );

  @POST(AuthUrls.freeToken)
  Future<FreeToken> freeToken(
    @Body() Map<String, dynamic> userUuidSerializerRequest,
  );

  @POST(AuthUrls.refreshToken)
  Future<FreeToken> refreshToken(
    @Body() Map<String, dynamic> tokenRefreshSerializerRequest,
  );

  @POST(AuthUrls.logIn)
  Future<FreeToken> logIn(
    @Body() Map<String, dynamic> login,
  );

  @PATCH(AuthUrls.editUser)
  Future<User> editUser(
    @Body() Map<String, dynamic> userPatch,
    @Query('user_id') int userId,
  );

  @DELETE(AuthUrls.deleteUser)
  Future<void> deleteUser();

  @POST(AuthUrls.uploadProfilePicture)
  @MultiPart()
  Future<void> uploadImage(
      @Part() File picture,
      @Part() int user_id,
      );

}
