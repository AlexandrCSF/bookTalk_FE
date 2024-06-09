import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:flutter/material.dart';

class CreateEventViewModel extends ChangeNotifier {

  final _repository = getIt.get<MeetingRepository>();

  final _topicController = TextEditingController();
  TextEditingController get topicController => _topicController;

  final _placeController = TextEditingController();
  TextEditingController get placeController => _placeController;

  Future<void> createEvent() async {
    _errorMessage = '';
    if (_topicController.text.isNotEmpty && _placeController.text.isNotEmpty ) {
      try {
        Map<String, dynamic> createMeeting = {
          'name': _topicController.text,
          'date':
              '${selectedDate.day}-${selectedDate.month}-${selectedDate.year}',
          'time': '${selectedTime.hour}:${selectedTime.minute}',
          'location': _placeController.text,
        };
        await _repository.createMeeting(createMeeting);
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

  DateTime _selectedDate = DateTime.now();
  DateTime get selectedDate => _selectedDate;

  void setDate(DateTime value) {
    _selectedDate = value;
  }

  TimeOfDay _selectedTime = TimeOfDay.now();
  TimeOfDay get selectedTime => _selectedTime;

  void setTime(TimeOfDay value) {
    _selectedTime = value;
  }

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

}