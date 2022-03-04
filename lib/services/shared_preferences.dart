import 'dart:async' show Future;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static Future<String> getString(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return _preferences.getString(key) ?? '';
  }

  static Future<String> setString(String key, String value) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString(key, value);
    return value;
  }

  static Future<Map<String, dynamic>> setMap(
      String key, Map<String, dynamic> value) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString(key, json.encode(value));
    return value;
  }

  static Future<int?> getInt(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return _preferences.getInt(key);
  }

  static Future<int> setInt(String key, int value) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setInt(key, value);
    return value;
  }

  static Future<bool?> getBool(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return _preferences.getBool(key);
  }

  static Future<bool> setBool(String key, bool value) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setBool(key, value);
    return value;
  }

  Future<bool> contains(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return _preferences.containsKey(key);
  }

  static Future<bool> remove(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return _preferences.remove(key);
  }

  static Future<bool> clear() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    return _preferences.clear();
  }
}
