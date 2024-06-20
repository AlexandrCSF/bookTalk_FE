import 'dart:collection';
import 'dart:io';

import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/data/repositories/genre_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_card.dart';
import 'package:booktalk_frontend/models/club_create.dart';
import 'package:booktalk_frontend/models/genre.dart';
import 'package:booktalk_frontend/utils/analytics/analytics.dart';
import 'package:booktalk_frontend/utils/city_fias.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class CreateClubViewModel extends ChangeNotifier {
  final _repository = getIt.get<ClubRepository>();
  final _genreRepository = getIt.get<GenreRepository>();

  final _analytics = getIt.get<Analytics>();

  late ClubCard createdClub;

  Future<void> createClub(int userId) async {
    try {
      ClubCreate clubCreate = ClubCreate(
        name: _nameController.text,
        description: _descriptionController.text,
        adminId: userId,
        cityFias: CityFias.cityFias[_selectedCity]!,
        interests: _selectedGenreNames,
      );
      createdClub = await _repository.createClub(clubCreate);
      await _analytics.createClub();
      if (clubAvatar != null) {
        await _repository.uploadClubImage(clubAvatar!, createdClub.id);
      }
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
    _selectedGenreNames.add(genre.name);
    notifyListeners();
  }

  void removeGenre(Genre genre) {
    _selectedGenres.remove(genre);
    _selectedGenreNames.remove(genre.name);
    notifyListeners();
  }

  Future<void> loadGenres() async {
    _allGenres = await _genreRepository.getGenreList();
    notifyListeners();
  }

  Future<void> choosePicture() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path!);
      _clubAvatar = file;
    }
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
  }

  final _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final _descriptionController = TextEditingController();
  TextEditingController get descriptionController => _descriptionController;

  String _selectedCity = 'Воронеж';
  String get selectedCity => _selectedCity;

  final Iterable<String> _cities = CityFias.cityFias.keys;
  UnmodifiableListView<String> get cities => UnmodifiableListView(_cities);

  List<Genre> _allGenres = [];
  UnmodifiableListView<Genre> get allGenres => UnmodifiableListView(_allGenres);

  List<Genre> _selectedGenres = [];
  UnmodifiableListView<Genre> get selectedGenres => UnmodifiableListView(_selectedGenres);

  List<int> _selectedGenreIndexes = [];
  List<String> _selectedGenreNames = [];

  File? _clubAvatar;
  File? get clubAvatar => _clubAvatar;
}
