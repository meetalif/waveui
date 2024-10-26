import 'package:flutter/material.dart';
import 'package:waveui/theme/wave_colors.dart';

class WaveTheme {
  static ThemeData config(Color primaryColor, {bool isDark = true}) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: primaryColor.withOpacity(0.1),
        onSecondary: primaryColor,
        error: Colors.red,
        onError: Colors.white,
        surface: WaveColors.background(isDark: isDark),
        onSurface: WaveColors.text(darkMode: isDark),
      ),
      dividerColor: WaveColors.separator(isDark: isDark),
      scaffoldBackgroundColor: WaveColors.background(isDark: isDark),
      brightness: isDark ? Brightness.dark : Brightness.light,
      listTileTheme:
          ListTileThemeData(tileColor: WaveColors.content(darkMode: isDark)),
      appBarTheme: _appBarTheme(isDark),
      cardColor: WaveColors.content(darkMode: isDark),
      buttonTheme: _buttonThemeData(isDark),
      dividerTheme: DividerThemeData(
        color: WaveColors.separator(isDark: isDark),
        space: 0,
        endIndent: 0,
        indent: 0,
        thickness: 1,
      ),
      filledButtonTheme: _filledButtonThemeData(isDark),
      elevatedButtonTheme: _elevatedButtonThemeData(isDark),
      textButtonTheme: _textButtonThemeData(isDark),
      outlinedButtonTheme: _outlinedButtonThemeData(primaryColor, isDark),
      popupMenuTheme: PopupMenuThemeData(
        color: WaveColors.contentHighlighted(darkMode: isDark),
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      badgeTheme: const BadgeThemeData(),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: WaveColors.content(darkMode: isDark),
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: WaveColors.content(darkMode: isDark),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        dialBackgroundColor: WaveColors.contentHighlighted(darkMode: isDark),
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: WaveColors.content(darkMode: isDark),
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

AppBarTheme _appBarTheme(bool isDark) {
  return AppBarTheme(
    backgroundColor: WaveColors.content(darkMode: isDark),
    centerTitle: true,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
      color: WaveColors.text(darkMode: isDark),
      fontSize: 17,
      fontWeight: FontWeight.w500,
    ),
  );
}

ButtonThemeData _buttonThemeData(bool isDark) {
  return ButtonThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)));
}

FilledButtonThemeData _filledButtonThemeData(bool isDark) {
  return FilledButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

ElevatedButtonThemeData _elevatedButtonThemeData(bool isDark) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

TextButtonThemeData _textButtonThemeData(bool isDark) {
  return TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

OutlinedButtonThemeData _outlinedButtonThemeData(
    Color primaryColor, bool isDark) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
