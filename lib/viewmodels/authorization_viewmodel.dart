import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/login.dart';
import 'package:flutter/material.dart';

class AuthorizationViewModel extends ChangeNotifier {

  final _repository = getIt.get<AuthRepository>();

  Future<void> signIn() async {
    try {
      Login login = Login(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print("VM login: $login");
      await _repository.signIn(login);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

  final TextEditingController _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
  }

}
