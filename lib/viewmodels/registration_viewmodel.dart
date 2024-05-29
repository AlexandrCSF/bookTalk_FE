import 'package:booktalk_frontend/data/repositories/auth_repository.dart';
import 'package:booktalk_frontend/main.dart';
import 'package:booktalk_frontend/models/user_create.dart';
import 'package:booktalk_frontend/utils/device_info.dart';
import 'package:flutter/cupertino.dart';

class RegistrationViewModel extends ChangeNotifier {

  final _repository = getIt.get<AuthRepository>();

  final _firstNameController = TextEditingController();
  TextEditingController get firstNameController => _firstNameController;

  final _lastNameController = TextEditingController();
  TextEditingController get lastNameController => _lastNameController;

  final _emailController = TextEditingController();
  TextEditingController get emailController => _emailController;

  final _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  String _selectedCity = 'Не выбрано';
  String get selectedCity => _selectedCity;

  List<String> cities = ['Не выбрано', 'Воронеж', 'Россошь', 'Борисоглебск', 'Лиски'];

  void setCity(String? value) {
    if (value != null) {
      _selectedCity = value;
      notifyListeners();
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

  /*Future<void> signUp() async {
    UserCreate userCreate = UserCreate(
      username: 'testusername',
      firstName: _firstNameController.text,
      lastName: _lastNameController.text,
      dateJoined: '${DateTime.now().year.toString()}-'
          '${DateTime.now().month.toString()}-'
          '${DateTime.now().day.toString()}',
      // todo: add email validation
      email: _emailController.text,
      city: _selectedCity,
    );
    print(userCreate.toJson());
    String uuid = await DeviceInformation.getId();
    if (uuid.isEmpty) {
      // todo: handle empty value
    }
    //await _repository.signUp(userCreate, uuid);
  }*/

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _lastNameController.dispose();
    _firstNameController.dispose();
  }

}
