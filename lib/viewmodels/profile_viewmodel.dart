import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/login.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileViewModel extends ChangeNotifier {

  final _repository = getIt.get<AuthRepository>();

  String _firstName = '';
  String get firstName => _firstName;
  String _lastName = '';
  String get lastName => _lastName;
  String _email = '';
  String get email => _email;
  String _city = '';
  String get city => _city;

  String? _profilePicture;
  String? get profilePicture => _profilePicture;

  Future<void> loadUserData(userId) async {
    try {
      // todo: add profile picture
      User user = await _repository.getUserData(userId);
      _firstName = user.firstName;
      _lastName = user.lastName;
      _email = user.email;
      _city = 'г. ${user.city}';
      print(user);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

  Future<void> signIn() async {
    try {
      Login login = Login(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print("VM login: $login");
      await _repository.signIn(login);
      _authorize();
      loadUserData(1);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

  void _authorize() async {
    _authorized = true;
    notifyListeners();
  }

  void _unauthorize() async {
    _authorized = false;
    notifyListeners();
  }

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  bool _authorized = getIt.get<SecureStorage>().isAuthorized();
  bool get authorized => _authorized;

}