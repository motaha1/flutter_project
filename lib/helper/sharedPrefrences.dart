import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FileHelper {

  static late SharedPreferences sharedPreferences;
  static initSp() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static saveDataInSp(String data) {
    sharedPreferences.setString("content", data);
  }

  static String? getDataFromSp() {
    String? content = sharedPreferences.getString("content");
    return content;
  }

  static setFirstTime() {
    sharedPreferences.setBool('isFirst', false);
  }

  static bool getFirstTime() {
    return sharedPreferences.getBool('isFirst') ?? true;
  }
}