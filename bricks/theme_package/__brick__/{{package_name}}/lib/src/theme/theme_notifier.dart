import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeNotifierProvider =
    ChangeNotifierProvider<ThemeNotifier>((_) => ThemeNotifier());

class ThemeNotifier extends ChangeNotifier {
  ThemeNotifier() {
    _init();
  }
  ThemeMode themeMode = ThemeMode.system;
  late SharedPreferences prefs;
  final _key = "theme";

  Future<void> _init() async {
    prefs = await SharedPreferences.getInstance();
    final theme = await getTheme(_key);
    themeMode = ThemeMode.values[theme];
    notifyListeners();
  }

  Future<int> getTheme(String key) async {
    return int.parse(await prefs.getString(key) ?? themeMode.index.toString());
  }

  Future<void> setTheme(ThemeMode mode) async {
    themeMode = mode;
    notifyListeners();
    await prefs.setString(_key, mode.index.toString());
  }
}
