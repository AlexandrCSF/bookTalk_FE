import 'package:booktalk_frontend/data/urls/auth_urls.dart';
import 'package:booktalk_frontend/models/free_token.dart';
import 'package:booktalk_frontend/models/token_refresh_serializer_request.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/models/user_create.dart';
import 'package:booktalk_frontend/models/user_uuid_serializer_request.dart';
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
  Future<UserCreate> createUser(
    @Query('uuid') String uuid,
    @Body() UserCreate userCreate,
  );

  @POST(AuthUrls.freeToken)
  Future<FreeToken> freeToken(
    @Body() UserUuidSerializerRequest userUuidSerializerRequest,
  );

  @POST(AuthUrls.refreshToken)
  Future<FreeToken> refreshToken(
    @Body() TokenRefreshSerializerRequest tokenRefreshSerializerRequest,
  );
}
