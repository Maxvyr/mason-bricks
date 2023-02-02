import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final themeNotifierProvider = ChangeNotifierProvider<ThemeNotifier>((_) => ThemeNotifier());

class ThemeNotifier extends ChangeNotifier {
  ThemeNotifier() {
    _init();
  }
  ThemeMode themeMode = ThemeMode.system;
  FlutterSecureStorage? flutterSecureStorage;
  final key = "theme";

  Future<void> _init() async {
    flutterSecureStorage = const FlutterSecureStorage();
    final theme = await getTheme(key);
    themeMode = ThemeMode.values[theme];
    notifyListeners();
  }

  Future<int> getTheme(String key) async {
    return int.parse(await flutterSecureStorage?.read(key: key) ?? themeMode.index.toString());
  }

  Future<void> setTheme(ThemeMode mode) async {
    themeMode = mode;
    notifyListeners();
    await flutterSecureStorage?.write(key: key, value: mode.index.toString());
  }
}
