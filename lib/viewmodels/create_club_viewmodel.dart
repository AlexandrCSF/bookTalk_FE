import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/repositories/genre_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/club_create.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/utils/city_fias.dart';
import 'package:flutter/material.dart';

class CreateClubViewModel extends ChangeNotifier {

  final _repository = getIt.get<ClubRepository>();
  final _genreRepository = getIt.get<GenreRepository>();

  String _selectedCity = 'Не выбрано';
  String get selectedCity => _selectedCity;

  String _selectedCityFias = '';

  final List<String> _cities = [];
  List<String> get cities => _cities;

  late ClubCard createdClub;

  void setCity(String? value) {
    if (value != null) {
      _selectedCity = value;
      _selectedCityFias = CityFias.cityFias[value] ?? _selectedCityFias;
    }
  }

  void getCities() {
    for (var city in CityFias.cityFias.keys) {
      _cities.add(city);
    }
  }

  List<Genre> _allGenres = [];
  UnmodifiableListView get allGenres => UnmodifiableListView(_allGenres);

  List<int> _selectedGenreIndexes = [];
  UnmodifiableListView get selectedGenreIndexes => UnmodifiableListView(_selectedGenreIndexes);

  List<String> _selectedGenreNames = [];
  UnmodifiableListView get selectedGenreNames => UnmodifiableListView(_selectedGenreNames);

  void addGenres(List<Genre> genres) {
    for (var genre in genres) {
      _selectedGenreIndexes.add(genre.id);
      _selectedGenreNames.add(genre.name);
    }
    notifyListeners();
  }

  Future<void> loadGenres() async {
    _allGenres = await _genreRepository.getGenreList();
  }

  final _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final _descriptionController = TextEditingController();
  TextEditingController get descriptionController => _descriptionController;

  Future<void> createClub(int userId) async {
    try {
      Map<String, dynamic> clubCreate = {
        'title': _nameController.text,
        'description': _descriptionController.text,
        'created_by': userId,
        'city_fias': _selectedCityFias,
        'interests': _selectedGenreIndexes,
      };
      createdClub = await _repository.createClub(clubCreate);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
      notifyListeners();
    }
  }
}
