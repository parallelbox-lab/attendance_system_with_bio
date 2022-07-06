import 'package:flutter/material.dart';
import "package:provider/provider.dart";
import 'package:shared_preferences/shared_preferences.dart';

class UserData with ChangeNotifier{
static SharedPreferences? _preferences;
static Future init() async {
    _preferences = await SharedPreferences.getInstance();
}   
  static int? getUserId() {
    return _preferences?.getInt('userId');
  }

  static String? getUserName() {
    final userN = _preferences?.getString('userName');
    return userN;
  }
  

}