import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/free_token.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {

  final _secureStorage = const FlutterSecureStorage();
  Dio dio = getIt.get<Dio>();
  Interceptor? _interceptor;
  bool _isAuthorized = false;

  bool isAuthorized() {
    return _isAuthorized;
  }

  Future<void> writeTokens(FreeToken freeToken) async {
    await _secureStorage.write(key: 'accessToken', value: freeToken.accessToken);
    await _secureStorage.write(key: 'refreshToken', value: freeToken.refreshToken);
    await _secureStorage.write(key: 'userId', value: '${freeToken.userId}');
    print('SS set token');
    _setInterceptor(freeToken.accessToken);
    _authorize();
  }

  Future<void> updateAccessToken(FreeToken freeToken) async {
    await _secureStorage.write(key: 'accessToken', value: freeToken.accessToken);
    _setInterceptor(freeToken.accessToken);
  }

  Future<void> deleteTokens() async {
    await _secureStorage.delete(key: 'accessToken');
    await _secureStorage.delete(key: 'refreshToken');
    _removeInterceptor();
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

  void _setInterceptor(String accessToken) {
    _removeInterceptor();
    _interceptor = InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Authorization'] = 'Bearer $accessToken';
        return handler.next(options);
      },
    );
    dio.interceptors.add(_interceptor!);
    print('SS set interceptor');
  }

  void _removeInterceptor() {
    dio.interceptors.remove(_interceptor);
  }

  void _authorize() {
    _isAuthorized = true;
    print('SS authorized');
  }

  void _unauthorize() {
    _isAuthorized = false;
  }

}
