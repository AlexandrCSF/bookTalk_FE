import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:flutter/material.dart';

class EditEventViewModel extends ChangeNotifier {
  final _repository = getIt.get<MeetingRepository>();

  EditEventViewModel({
    required this.initialDate,
    required this.initialPlace,
    required this.initialTime,
    required this.initialTopic,
  });

  final String initialTopic;
  final String initialPlace;
  final DateTime initialDate;
  final TimeOfDay initialTime;

  final _topicController = TextEditingController();
  TextEditingController get topicController => _topicController;

  final _placeController = TextEditingController();
  TextEditingController get placeController => _placeController;

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

  void initEditEvent() {
    _topicController.text = initialTopic;
    _placeController.text = initialPlace;
    setDate(initialDate);
    setTime(initialTime);
  }

  Future<void> editEvent() async {
    _errorMessage = '';
    if (_topicController.text.isNotEmpty && _placeController.text.isNotEmpty ) {
      try {
        Map<String, dynamic> createMeeting = {
          'name': _topicController.text,
          'date':
          '${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}',
          'time': '${_selectedTime.hour}:${_selectedTime.minute}',
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
}
