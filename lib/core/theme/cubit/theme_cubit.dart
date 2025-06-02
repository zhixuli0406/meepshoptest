import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meepshoptest/core/theme/cubit/theme_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String _themePrefsKey = 'app_theme_mode';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  final SharedPreferences _prefs;

  ThemeCubit(this._prefs) : super(ThemeState.initial()) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    try {
      final themeModeString = _prefs.getString(_themePrefsKey);
      ThemeMode themeMode = ThemeMode.light;

      if (themeModeString == ThemeMode.dark.toString()) {
        themeMode = ThemeMode.dark;
      } else if (themeModeString == ThemeMode.light.toString()) {
        themeMode = ThemeMode.light;
      }

      if (!isClosed) {
        emit(state.copyWith(themeMode: themeMode));
      }
    } catch (e) {
      if (!isClosed) {
        emit(state.copyWith(themeMode: ThemeMode.light));
      }
    }
  }

  void setThemeMode(ThemeMode themeMode) {
    if (!isClosed) {
      emit(state.copyWith(themeMode: themeMode));

      _saveTheme(themeMode);
    }
  }

  Future<void> _saveTheme(ThemeMode themeMode) async {
    await _prefs.setString(_themePrefsKey, themeMode.toString());
  }
}
