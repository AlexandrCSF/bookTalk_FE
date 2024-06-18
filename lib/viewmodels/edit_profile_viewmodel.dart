import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/data/repositories/genre_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/models/user.dart';
import 'package:booktalk_frontend/models/user_patch.dart';
import 'package:booktalk_frontend/utils/city_fias.dart';
import 'package:booktalk_frontend/utils/string_formatting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfileViewModel extends ChangeNotifier {

  final _repository = getIt.get<AuthRepository>();
  final _genreRepository = getIt.get<GenreRepository>();

  late User initialProfile;

  Future<void> editProfile() async {
    _errorMessage = '';
    if (_firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty) {
      try {
        UserPatch userPatch = UserPatch(
          username: initialProfile.username,
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          email: _emailController.text,
          city: CityFias.cityFias[_selectedCity]!,
          interests: _selectedGenreNames,
        );
        print(userPatch);
        await _repository.editUser(userPatch, initialProfile.id);
      } on ApiException catch (e) {
        debugPrint(e.message);
      } finally {
        notifyListeners();
      }
    } else {
      _errorMessage = 'Все поля должны быть заполнены';
      notifyListeners();
    }
  }

  Future<void> loadGenres() async {
    _allGenres = await _genreRepository.getGenreList();
    notifyListeners();
  }

  void setCity(String? value) {
    if (value != null) {
      _selectedCity = value;
      notifyListeners();
    }
  }

  void getGenreNames() {
    for (Genre genre in _selectedGenres) {
      _selectedGenreNames.add(genre.name);
    }
  }

  void addGenre(Genre genre) {
    _selectedGenres.add(genre);
    _selectedGenreIndexes.add(genre.id);
    _selectedGenreNames.add(genre.name);
    notifyListeners();
  }

  void removeGenre(Genre genre) {
    _selectedGenres.remove(genre);
    _selectedGenreNames.remove(genre.name);
    notifyListeners();
  }

  void initEditProfile(User user) {
    initialProfile = user;
    _firstNameController.text = user.firstName;
    _lastNameController.text = user.lastName;
    _emailController.text = user.email;
    _selectedCity = CityFias.cityFias.keys.firstWhere((element) => CityFias.cityFias[element] == user.city, orElse: () => '');;
    for (Genre genre in user.interests) {
      _selectedGenres.add(genre);
    }
    getGenreNames();
  }

  @override
  void dispose() {
    super.dispose();
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

  String _selectedCity = 'Воронеж';
  String get selectedCity => _selectedCity;

  final Iterable<String> _cities = CityFias.cityFias.keys;
  UnmodifiableListView<String> get cities => UnmodifiableListView(_cities);

  List<Genre> _allGenres = [];
  List<Genre> get allGenres => _allGenres;

  List<Genre> _selectedGenres = [];
  List<Genre> get selectedGenres => _selectedGenres;

  List<int> _selectedGenreIndexes = [];
  List<String> _selectedGenreNames = [];

  String _errorMessage = '';
  String get errorMessage => _errorMessage;
}
