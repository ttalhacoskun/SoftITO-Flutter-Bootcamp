import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SharedPrefsService {
  late SharedPreferences _sharedPreferences;
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  write(String key, bool value) {
    _sharedPreferences.setBool(key, value);
  }

  read(String key) {
    return _sharedPreferences.getBool(key);
  }
}
