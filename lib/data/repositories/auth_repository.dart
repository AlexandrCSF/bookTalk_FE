import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/free_token.dart';
import 'package:booktalk_frontend/models/token_refresh_serializer_request.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/models/user_create.dart';
import 'package:booktalk_frontend/models/user_uuid_serializer_request.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {

  final _client = getIt.get<AuthClient>();
  final _secureStorage = getIt.get<FlutterSecureStorage>();

  Future<void> signUp(UserCreate userCreate, String uuid) async {
    await _client.createUser(uuid, userCreate.toJson());
    FreeToken token = await _client.freeToken(UserUuidSerializerRequest(uuid: uuid).toJson());
    await _secureStorage.write(key: 'accessToken', value: token.accessToken);
    await _secureStorage.write(key: 'refreshToken', value: token.refreshToken);
  }

  Future<void> logOut() async {
    await _secureStorage.write(key: 'accessToken', value: null);
    await _secureStorage.write(key: 'refreshToken', value: null);
  }

  Future<void> refreshToken() async {
    String? refreshToken = await _secureStorage.read(key: 'refreshToken');
    if (refreshToken != null) {
      await _client.refreshToken(
          TokenRefreshSerializerRequest(refresh: refreshToken).toJson());
    }
  }

  Future<User> getUserData(int userId) async {
    return await _client.getUser(userId);
  }

}