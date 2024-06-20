import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/meeting_create.dart';
import 'package:flutter/material.dart';

class CreateEventViewModel extends ChangeNotifier {

  final _repository = getIt.get<MeetingRepository>();

  Future<void> createEvent(int clubId) async {
    _errorMessage = '';
    if (_topicController.text.isNotEmpty && _placeController.text.isNotEmpty) {
      try {
        MeetingCreate meetingCreate = MeetingCreate(
          name: _topicController.text,
          date:
              '${_selectedDate.year}-${_selectedDate.month}-${_selectedDate.day}',
          time: '${_selectedTime.hour}:${_selectedTime.minute}',
          location: _placeController.text,
        );
        print(meetingCreate);
        await _repository.createMeeting(meetingCreate, '$clubId');
      } on ApiException catch (e) {
        print(e.message);
      } finally {
        notifyListeners();
      }
    } else {
      _errorMessage = 'Все поля должны быть заполнены';
      notifyListeners();
    }
  }

  final _topicController = TextEditingController();
  TextEditingController get topicController => _topicController;

  final _placeController = TextEditingController();
  TextEditingController get placeController => _placeController;

  DateTime _selectedDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;

  void setDate(DateTime value) {
    _selectedDate = value;
    notifyListeners();
  }

  TimeOfDay _selectedTime = TimeOfDay.now();
  TimeOfDay get selectedTime => _selectedTime;

  void setTime(TimeOfDay value) {
    _selectedTime = value;
    notifyListeners();
  }

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  @override
  void dispose() {
    super.dispose();
    _topicController.dispose();
    _placeController.dispose();
  }

}
