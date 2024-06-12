import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/free_token.dart';
import 'package:booktalk_frontend/models/token_refresh_serializer_request.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/models/user_create.dart';
import 'package:booktalk_frontend/models/user_uuid_serializer_request.dart';
import 'package:booktalk_frontend/utils/device_info.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:dio/dio.dart';

class AuthRepository {

  final _client = getIt.get<AuthClient>();
  /*final _secureStorage = getIt.get<SecureStorage>();

  Future<void> signUp(UserCreate userCreate, String uuid) async {
    await _client.createUser(uuid, userCreate.toJson());
    FreeToken token = await _client.freeToken(UserUuidSerializerRequest(uuid: uuid).toJson());
    await _secureStorage.writeTokens(token.accessToken, token.refreshToken);
  }

  Future<void> logOut() async {
    await _secureStorage.deleteTokens();
  }

  Future<void> refreshToken() async {
    String? refreshToken = await _secureStorage.getRefreshToken();
    if (refreshToken != null) {
      FreeToken token = await _client.refreshToken(
          TokenRefreshSerializerRequest(refresh: refreshToken).toJson());
      _secureStorage.updateAccessToken(token.accessToken);
    }
  }*/

  Future<void> signUp(UserCreate userCreate) async {
    try {
      String uuid = await DeviceInformation.getId();
      if (uuid.isEmpty) {
        uuid = '';
      }
      await _client.createUser(uuid, userCreate.toJson());
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<User> getUserData(int userId) async {
    return await _client.getUser(userId);
  }

}