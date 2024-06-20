import 'dart:io';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/free_token.dart';
import 'package:booktalk_frontend/models/login.dart';
import 'package:booktalk_frontend/models/token_refresh_serializer_request.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/models/user_create.dart';
import 'package:booktalk_frontend/models/user_patch.dart';
import 'package:booktalk_frontend/models/user_uuid_serializer_request.dart';
import 'package:booktalk_frontend/utils/device_info.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:dio/dio.dart';

class AuthRepository {

  final _client = getIt.get<AuthClient>();
  final _secureStorage = getIt.get<SecureStorage>();

  Future<void> freeToken() async {
    String uuid = await DeviceInformation.getId();
    if (uuid.isEmpty) {
      uuid = '';
    }
    UserUuidSerializerRequest uusr = UserUuidSerializerRequest(uuid: uuid);
    FreeToken freeToken = await _client.freeToken(uusr.toJson());
    await _secureStorage.writeTokens(freeToken);
  }

  Future<int> signIn(Login login) async {
    try {
      FreeToken freeToken = await _client.logIn(login.toJson());
      print("RP freeToken: $freeToken");
      await _secureStorage.writeTokens(freeToken);
      return freeToken.userId;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<User> signUp(UserCreate userCreate) async {
    try {
      /*String uuid = await DeviceInformation.getId();
      if (uuid.isEmpty) {
        uuid = '';
      }*/
      String uuid = StringFormatting.generateRandomSequence(20);
      print(uuid);
      print(userCreate.toJson());
      User user = await _client.createUser(uuid, userCreate.toJson());
      print(user);
      return user;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> signOut() async {
    await _secureStorage.deleteTokens();
  }

  Future<User> getUserData(int userId) async {
    return await _client.getUser(userId);
  }

  Future<User> editUser(UserPatch userPatch, int userId) async {
    try {
      print(userId);
      print(userPatch.toJson());
      User user = await _client.editUser(userPatch.toJson(), userId);
      print(user);
      return user;
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> deleteUser() async {
    try {
      await _client.deleteUser();
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

  Future<void> uploadProfileImage(File picture, int userId) async {
    try {
      await _client.uploadImage(picture, userId);
    } on DioException catch (e) {
      throw HandleException.handleException(e);
    }
  }

}