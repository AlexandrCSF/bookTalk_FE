import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/data/repositories/genre_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/user_create.dart';
import 'package:booktalk_frontend/utils/city_fias.dart';
import 'package:flutter/cupertino.dart';

class RegistrationViewModel extends ChangeNotifier {

  final _repository = getIt.get<AuthRepository>();
  final _genreRepository = getIt.get<GenreRepository>();

  Future<void> signUp() async {
    try {
      UserCreate userCreate = UserCreate(username: 'testusername',
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        dateJoined: '${DateTime.now().year.toString()}-'
            '${DateTime.now().month.toString()}-'
            '${DateTime.now().day.toString()}',
        email: _emailController.text,
        city: CityFias.cityFias[_selectedCity]!,
        interests: _selectedGenreIndexes,
      );
      print(userCreate.toJson());
      await _repository.signUp(userCreate);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }

  void setCity(String? value) {
    if (value != null) {
      _selectedCity = value;
      notifyListeners();
    }
  }

  void addGenre(Genre genre) {
    _selectedGenres.add(genre);
    _selectedGenreIndexes.add(genre.id);
    notifyListeners();
  }

  void removeGenre(Genre genre) {
    _selectedGenres.remove(genre);
    _selectedGenreIndexes.remove(genre.id);
    notifyListeners();
  }

  Future<void> loadGenres() async {
    _allGenres = await _genreRepository.getGenreList();
    notifyListeners();
  }

  bool checkFields() {
    _errorMessage = '';
    if (_firstNameController.text.isEmpty
        || _lastNameController.text.isEmpty
        || _emailController.text.isEmpty
        || _passwordController.text.isEmpty) {
      _errorMessage = 'Все поля должны быть заполнены';
      notifyListeners();
      return false;
    } else {
      return true;
    }
  }

  bool validateEmail(String email) {
    RegExp regexp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    if (regexp.hasMatch(email)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _lastNameController.dispose();
    _firstNameController.dispose();
  }

  final _firstNameController = TextEditingController();
  TextEditingController get firstNameController => _firstNameController;

  final _lastNameController = TextEditingController();
  TextEditingController get lastNameController => _lastNameController;

  final _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  String _selectedCity = 'Воронеж';
  String get selectedCity => _selectedCity;

  final Iterable<String> _cities = CityFias.cityFias.keys;
  UnmodifiableListView<String> get cities => UnmodifiableListView(_cities);

  List<Genre> _allGenres = [];
  UnmodifiableListView<Genre> get allGenres => UnmodifiableListView(_allGenres);

  List<Genre> _selectedGenres = [];
  UnmodifiableListView<Genre> get selectedGenres => UnmodifiableListView(_selectedGenres);

  List<int> _selectedGenreIndexes = [];

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

}
