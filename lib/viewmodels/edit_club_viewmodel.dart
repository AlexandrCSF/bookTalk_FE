import 'dart:collection';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/repositories/genre_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/club_patch.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/utils/city_fias.dart';
import 'package:booktalk_frontend/utils/secure_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditClubViewModel extends ChangeNotifier {

  final _repository = getIt.get<ClubRepository>();
  final _genreRepository = getIt.get<GenreRepository>();

  EditClubViewModel({required this.initialClub});

  final ClubCard initialClub;

  Future<void> editClub() async {
    _errorMessage = '';
    if (_nameController.text.isNotEmpty && _descriptionController.text.isNotEmpty) {
      try {
        ClubPatch clubPatch = ClubPatch(
          name: _nameController.text,
          description: _descriptionController.text,
          admin: initialClub.admin.id,
          cityFias: CityFias.cityFias[_selectedCity]!,
        );
        await _repository.editClub(clubPatch, '${initialClub.id}');
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

  TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  TextEditingController _descriptionController = TextEditingController();
  TextEditingController get descriptionController => _descriptionController;

  late String _selectedCity;
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

  void initEditClub() {
    _nameController.text = initialClub.name;
    _descriptionController.text = initialClub.description;
    _selectedCity = initialClub.city;
    _selectedGenres = initialClub.interests;
    for (var genre in _selectedGenres) {
      _selectedGenreIndexes.add(genre.id);
    }
  }

}