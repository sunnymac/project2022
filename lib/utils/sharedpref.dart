import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _sharedPrefs;

  String loginFlag = "isLogin";

  factory SharedPrefs() => SharedPrefs._internal();

  SharedPrefs._internal();

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

//to check if user is loged in or not
  setLoginFlag(value) {
    _sharedPrefs.setBool(loginFlag, value);
  }

  bool get getLoginFlag => _sharedPrefs.getBool(loginFlag) ?? false;
}
