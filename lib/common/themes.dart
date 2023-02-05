import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'colors.dart' as colors;

CanapiiTheme canapiiTheme = CanapiiTheme();

class CanapiiTheme with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isDarkOn) {
    themeMode = isDarkOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  static ThemeData get lightMode {
    return ThemeData(
      colorScheme: const ColorScheme.light(),
      primaryColor: colors.AppColor.primaryColor,
      scaffoldBackgroundColor: colors.AppColor.lightBackground,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.AppColor.primaryColor,
        titleTextStyle: TextStyle(
          color: colors.AppColor.primaryColorContrast,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),
        actionsIconTheme: IconThemeData(
          color: colors.AppColor.primaryColorContrast,
        )
      ),
    );
  }

  static ThemeData get darkMode {
    return ThemeData(
      colorScheme: const ColorScheme.dark(),
      primaryColor: colors.AppColor.primaryColorDark,
      scaffoldBackgroundColor: colors.AppColor.darkBackground,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.AppColor.primaryColorDark,
        titleTextStyle: TextStyle(
          color: colors.AppColor.primaryColorDarkContrast,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),
        actionsIconTheme: IconThemeData(
          color: colors.AppColor.primaryColorDarkContrast,
        )
      ),
    );
  }
}