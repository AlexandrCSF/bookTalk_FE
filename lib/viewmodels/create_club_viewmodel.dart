import 'package:booktalk_frontend/data/repositories/book_club_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_create.dart';
import 'package:flutter/material.dart';

class CreateClubViewModel extends ChangeNotifier {

  final _repository = getIt.get<ClubRepository>();

  final _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;

  final _descriptionController = TextEditingController();
  TextEditingController get descriptionController => _descriptionController;

  String _selectedCity = 'Не выбрано';
  String get selectedCity => _selectedCity;

  Future<void> createClub(int userId) async {
    ClubCreate clubCreate = ClubCreate(
      id: 1,
      name: _nameController.text,
      description: _descriptionController.text,
      adminId: userId,
      cityFias: _selectedCity,
    );
  }
}
