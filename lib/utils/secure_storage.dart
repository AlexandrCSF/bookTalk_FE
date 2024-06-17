import 'dart:math';

import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/data/services/auth_client.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/free_token.dart';
import 'package:booktalk_frontend/models/token_refresh_serializer_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _secureStorage = const FlutterSecureStorage();
  Dio dio = getIt.get<Dio>();
  //Interceptor? _interceptor;
  bool _isAuthorized = false;
  //final _authClient = getIt.get<AuthClient>();
  final _tokenInterceptor = TokenInterceptor(
      dio: getIt.get<Dio>(), secureStorage: const FlutterSecureStorage());

  bool isAuthorized() {
    return _isAuthorized;
  }

  Future<void> writeTokens(FreeToken freeToken) async {
    await _secureStorage.write(
      key: 'accessToken',
      value: freeToken.accessToken,
    );
    await _secureStorage.write(
      key: 'refreshToken',
      value: freeToken.refreshToken,
    );
    await _secureStorage.write(
      key: 'userId',
      value: '${freeToken.userId}',
    );
    print('SS set token');
    dio.interceptors.add(_tokenInterceptor);
    _authorize();
  }

  /*Future<void> writeTokens(FreeToken freeToken) async {
    await _secureStorage.write(
        key: 'accessToken', value: freeToken.accessToken);
    await _secureStorage.write(
        key: 'refreshToken', value: freeToken.refreshToken);
    await _secureStorage.write(key: 'userId', value: '${freeToken.userId}');
    print('SS set token');
    _setInterceptor(freeToken.accessToken);
    _authorize();
  }*/

  /*Future<void> updateAccessToken(FreeToken freeToken) async {
    await _secureStorage.write(
        key: 'accessToken', value: freeToken.accessToken);
    print('SS updated token');
    //_setInterceptor(freeToken.accessToken);
  }*/

  Future<void> deleteTokens() async {
    await _secureStorage.delete(key: 'accessToken');
    await _secureStorage.delete(key: 'refreshToken');

    dio.interceptors.remove(_tokenInterceptor);

    //_removeInterceptor();
    _unauthorize();
  }

  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: 'accessToken');
  }

  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: 'refreshToken');
  }

  Future<int?> getUserId() async {
    String? stringId = await _secureStorage.read(key: 'userId');
    if (stringId != null) {
      return int.parse(stringId);
    }
    return 0;
  }

  /*Future<void> handleRefreshToken(DioException error) async {
    _removeInterceptor();
    TokenRefreshSerializerRequest tokenRefresh = TokenRefreshSerializerRequest(refresh: (await getRefreshToken())!);
    print('SS refreshtoken: $tokenRefresh');
    final freeToken = await _authClient.refreshToken(tokenRefresh.toJson());
    updateAccessToken(freeToken);
    dio.request('${error.requestOptions.baseUrl}${error.requestOptions.path}', data: error.requestOptions.data);
    print('REQUEST REQUEST REQUEST REQUEST REQUEST REQUEST REQUEST REQUEST REQUEST REQUEST');
  }
  */

  /*Future<String> getNewAccessToken(String refreshToken) async {
    TokenRefreshSerializerRequest tokenRefresh =
        TokenRefreshSerializerRequest(refresh: (await getRefreshToken())!);
    print('SS refreshtoken: $tokenRefresh');
    final freeToken = await _authClient.refreshToken(tokenRefresh.toJson());
    updateAccessToken(freeToken);
    return freeToken.accessToken;
  }*/

  /*void _setInterceptor(String accessToken) {
    _removeInterceptor();
    _interceptor = InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Authorization'] = 'Bearer $accessToken';
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response != null && error.response?.statusCode == 401) {
          print(
              'UNAUTHORIZED UNAUTHORIZED UNAUTHORIZED UNAUTHORIZED UNAUTHORIZED UNAUTHORIZED');
          final refreshToken = await getRefreshToken();
          if (refreshToken != null) {
            final newAccessToken = await getNewAccessToken(refreshToken);
          }
          //await handleRefreshToken(error);
        }
      },
    );
    dio.interceptors.add(_interceptor!);
    print('SS set interceptor');
  }*/

  /*void _removeInterceptor() {
    dio.interceptors.remove();
  }*/

  void _authorize() {
    _isAuthorized = true;
    print('SS authorized');
  }

  void _unauthorize() {
    _isAuthorized = false;
    print('SS unauthorized');
  }
}

class TokenInterceptor extends Interceptor {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  TokenInterceptor({
    required this.dio,
    required this.secureStorage,
  });

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? accessToken = await secureStorage.read(key: 'accessToken');
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    print('SS SET INTERCEPTOR');
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      print('SS ERROR 401');
      RequestOptions options = err.requestOptions;
      String? refreshToken = await secureStorage.read(key: 'refreshToken');
      print('SS REFRESH TOKEN: $refreshToken');
      if (refreshToken != null) {
        try {
          Dio tokenDio = Dio();
          TokenRefreshSerializerRequest trsr =
              TokenRefreshSerializerRequest(refresh: refreshToken);
          var response = await tokenDio.post(
              '${err.requestOptions.baseUrl}/auth/token/refresh/',
              data: trsr.toJson());
          print('${response.data}');
          if (response.statusCode == 200) {
            String newAccessToken = response.data['access_token'];
            String newRefreshToken = response.data['refresh_token'];
            await secureStorage.write(
              key: 'accessToken',
              value: newAccessToken,
            );
            await secureStorage.write(
              key: 'refreshToken',
              value: newRefreshToken,
            );
            options.headers['Authorization'] = 'Bearer $newAccessToken';
            print('SS UPDATED INTERCEPTOR');
            final newRequest = await dio.fetch(options);
            return handler.resolve(newRequest);
          }
        } catch (e) {
          print(e.toString());
        }
      }
    }
  }
}
