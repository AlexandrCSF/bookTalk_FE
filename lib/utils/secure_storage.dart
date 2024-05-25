import 'package:booktalk_frontend/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {

  final _secureStorage = const FlutterSecureStorage();
  Dio dio = getIt.get<Dio>();
  Interceptor? _interceptor;

  Future<void> writeTokens(String accessToken, String refreshToken) async {
    await _secureStorage.write(key: 'accessToken', value: accessToken);
    await _secureStorage.write(key: 'refreshToken', value: refreshToken);
    _setInterceptor(accessToken);
  }

  Future<void> updateAccessToken(String newToken) async {
    await _secureStorage.write(key: 'accessToken', value: newToken);
    _setInterceptor(newToken);
  }

  Future<void> deleteTokens() async {
    await _secureStorage.delete(key: 'accessToken');
    await _secureStorage.delete(key: 'refreshToken');
    _removeInterceptor();
  }

  Future<String?> getAccessToken() async {
    return await _secureStorage.read(key: 'accessToken');
  }

  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: 'refreshToken');
  }

  void _setInterceptor(String accessToken) {
    _removeInterceptor();
    _interceptor = InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Authorization'] = 'Bearer $accessToken';
        return handler.next(options);
      },
    );
    dio.interceptors.add(_interceptor!);
  }

  void _removeInterceptor() {
    dio.interceptors.remove(_interceptor);
  }

}
