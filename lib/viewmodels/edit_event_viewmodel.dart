import 'package:booktalk_frontend/data/api_exceptions.dart';
import 'package:booktalk_frontend/data/repositories/meeting_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/club_meeting.dart';
import 'package:booktalk_frontend/models/meeting.dart';
import 'package:booktalk_frontend/models/meeting_patch.dart';
import 'package:flutter/material.dart';

class EditEventViewModel extends ChangeNotifier {
  final _repository = getIt.get<MeetingRepository>();
  
  EditEventViewModel({required this.initialMeeting});

  final ClubMeeting initialMeeting;

  Future<void> editEvent() async {
    _errorMessage = '';
    if (_topicController.text.isNotEmpty && _placeController.text.isNotEmpty) {
      try {
        MeetingPatch meetingPatch = MeetingPatch(
          name: _topicController.text,
          date:
              '${_selectedDate.year}-${_selectedDate.month}-${_selectedDate.day}',
          time: '${_selectedTime.hour}:${_selectedTime.minute}',
          location: _placeController.text,
        );
        print(meetingPatch);
        await _repository.editMeeting(meetingPatch, initialMeeting.id);
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

  Future<void> deleteEvent() async {
    try {
      await _repository.deleteEvent(initialMeeting.id);
    } on ApiException catch (e) {
      debugPrint(e.message);
    } finally {
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

  void initEditEvent() {
    _topicController.text = initialMeeting.name;
    _placeController.text = initialMeeting.location;
    _selectedDate = DateTime.parse(initialMeeting.date);
    String timeString = initialMeeting.time;
    List<String> parts = timeString.split(':');
    int hour = int.parse(parts[0]);
    int minute = int.parse(parts[1]);
    TimeOfDay initialTimeOfDay = TimeOfDay(hour: hour, minute: minute);
    _selectedTime = initialTimeOfDay;
  }

  @override
  void dispose() {
    super.dispose();
    _topicController.dispose();
    _placeController.dispose();
  }

}
