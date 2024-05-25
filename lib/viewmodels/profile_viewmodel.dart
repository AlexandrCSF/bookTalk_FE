import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/user.dart';
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
    } on ApiException catch (e) {
      debugPrint(e.message);
    }
  }

}