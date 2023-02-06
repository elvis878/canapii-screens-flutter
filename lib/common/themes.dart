import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'colors.dart' as colors;

class ThemeProvider extends ChangeNotifier {
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
}

class CanapiiTheme {
  static ThemeData get lightMode {
    return ThemeData(
      colorScheme: const ColorScheme.light(),
      primaryColor: colors.AppColor.primaryColor,
      scaffoldBackgroundColor: colors.AppColor.lightBackground,
      fontFamily: 'Nunito Sans',
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
      fontFamily: 'Nunito Sans',
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