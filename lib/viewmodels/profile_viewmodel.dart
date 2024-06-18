import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/login.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/utils/city_fias.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:booktalk_frontend/viewmodels/book_club_list_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
  List<String> _genres = [];
  List<String> get genres => _genres;

  late User _user;
  User get user => _user;

  String? _profilePicture;
  String? get profilePicture => _profilePicture;

  Future<void> loadUserData(userId) async {
    try {
      // todo: add profile picture
      _user = await _repository.getUserData(userId);
      _firstName = _user.firstName;
      _lastName = _user.lastName;
      _email = _user.email;
      //_city = 'г. ${user.city}';
      _city = CityFias.cityFias.keys.firstWhere((element) => CityFias.cityFias[element] == _user.city, orElse: () => '');
      getGenres(_user.interests);
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
      int userId = await _repository.signIn(login);
      _userId = userId;
      _authorize();
      loadUserData(_userId);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

  void getGenres(List<Genre> genres) async {
    if (_genres.isEmpty) {
      for (var genre in genres) {
        _genres.add(StringFormatting.getFormattedTag(genre.name));
      }
    }
  }

  Future<void> signOut() async {
    try {
      await _repository.signOut();
      _unauthorize();
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

  late int _userId;
  int get userId => _userId;

}