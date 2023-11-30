import 'package:waveui/waveui.dart';

// ignore: non_constant_identifier_names
ThemeData WaveTheme({
  Color themeColor = Colors.indigo,
  bool darkMode = false,
}) {
  return _getDefaultThemeData(darkMode: darkMode).copyWith(
    colorScheme: _colorScheme(darkMode: darkMode, themeColor: themeColor),
    dividerColor: Colors.grey.withOpacity(0.3),
    cardColor: WaveColors.contentBg(darkMode: darkMode),
    scaffoldBackgroundColor: WaveColors.backgroundColor(darkMode: darkMode),
    appBarTheme: _appBarTheme(darkMode: darkMode),
    bottomNavigationBarTheme: _bottomNavigationBarTheme(),
    dividerTheme: _dividerTheme(),
    buttonTheme: _buttonTheme(),
    filledButtonTheme: _filledButtonTheme(),
    outlinedButtonTheme: _outlinedButtonTheme(themeColor),
    textButtonTheme: _textButtonTheme(),
    elevatedButtonTheme: _elevatedButtonTheme(),
    timePickerTheme: _timePickerTheme(),
    datePickerTheme: _datePickerTheme(),
    floatingActionButtonTheme: _floatingActionButtonThemeData(),
    drawerTheme: _drawerTheme(),
    progressIndicatorTheme: _progressIndicatorTheme(),
    chipTheme: _chipTheme(),
    cardTheme: _cardTheme(),
    dialogTheme: _dialogTheme(),
    popupMenuTheme: _popupMenuThemeData(),
    inputDecorationTheme: _inputDecorationTheme(themeColor),
    textTheme: _textTheme(darkMode: darkMode),
    listTileTheme: _listTileThemeData(darkMode: darkMode),
  );
}

/// ************ THEME CONFIGS ***************

ColorScheme _colorScheme(
    {Color themeColor = Colors.deepPurple, bool darkMode = false}) {
  return darkMode
      ? ColorScheme.dark(
          primary: themeColor,
          background: Colors.grey.shade900,
          error: Colors.red,
        )
      : ColorScheme.light(
          primary: themeColor,
          background: Colors.grey.shade100,
          error: Colors.red.shade600,
        );
}

AppBarTheme _appBarTheme({bool darkMode = false}) {
  return AppBarTheme(
    centerTitle: true,
    backgroundColor: WaveColors.contentBg(darkMode: darkMode),
    titleTextStyle: TextStyle(
      color: WaveColors.contentFg(darkMode: darkMode),
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  );
}

DividerThemeData _dividerTheme() {
  return DividerThemeData(
    thickness: WaveConstants.contentBorder,
    space: 0,
    color: Get.theme.dividerColor,
  );
}

ButtonThemeData _buttonTheme() {
  return ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WaveConstants.radius),
    ),
  );
}

FilledButtonThemeData _filledButtonTheme() {
  return FilledButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WaveConstants.radius),
        ),
      ),
    ),
  );
}

OutlinedButtonThemeData _outlinedButtonTheme(Color accentColor) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      side: MaterialStatePropertyAll(
        BorderSide(
          color: accentColor,
          width: 1.8,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WaveConstants.radius),
        ),
      ),
    ),
  );
}

TextButtonThemeData _textButtonTheme() {
  return TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WaveConstants.radius),
        ),
      ),
    ),
  );
}

ElevatedButtonThemeData _elevatedButtonTheme() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WaveConstants.radius),
        ),
      ),
    ),
  );
}

TimePickerThemeData _timePickerTheme() {
  return TimePickerThemeData(
    elevation: 0,
    backgroundColor: Get.theme.colorScheme.background,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WaveConstants.radius),
      side: BorderSide(
        color: Get.theme.dividerColor,
        width: WaveConstants.contentBorder,
      ),
    ),
    dayPeriodBorderSide: BorderSide(
      color: Get.theme.dividerColor,
    ),
    hourMinuteTextStyle: const TextStyle(fontSize: 60),
    dialBackgroundColor: Get.theme.cardColor,
  );
}

DatePickerThemeData _datePickerTheme() {
  return DatePickerThemeData(
    elevation: 0,
    backgroundColor: Get.theme.colorScheme.background,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WaveConstants.radius),
      side: BorderSide(
        color: Get.theme.dividerColor,
        width: WaveConstants.contentBorder,
      ),
    ),
  );
}

DrawerThemeData _drawerTheme() {
  return DrawerThemeData(
    surfaceTintColor: Colors.transparent,
    backgroundColor: Get.theme.colorScheme.background,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
  );
}

ProgressIndicatorThemeData _progressIndicatorTheme() {
  return ProgressIndicatorThemeData(
    refreshBackgroundColor: Get.theme.colorScheme.primary.withOpacity(0.1),
    linearTrackColor: Get.theme.colorScheme.primary.withOpacity(0.1),
    circularTrackColor: Get.theme.colorScheme.primary.withOpacity(0.1),
  );
}

ChipThemeData _chipTheme() {
  return ChipThemeData(
    side: BorderSide(color: Get.theme.dividerColor),
    elevation: 0,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WaveConstants.radius),
    ),
  );
}

CardTheme _cardTheme() {
  return CardTheme(
    elevation: WaveConstants.elevation,
    surfaceTintColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WaveConstants.radius),
    ),
    color: Get.theme.cardColor,
  );
}

BottomNavigationBarThemeData _bottomNavigationBarTheme() {
  return const BottomNavigationBarThemeData(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(size: 28),
    unselectedIconTheme: IconThemeData(size: 28),
    elevation: 0,
  );
}

DialogTheme _dialogTheme() {
  return DialogTheme(
    surfaceTintColor: Colors.transparent,
    titleTextStyle: Get.textTheme.titleLarge,
    contentTextStyle: Get.textTheme.bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(WaveConstants.radius),
    ),
  );
}

InputDecorationTheme _inputDecorationTheme(Color themeColor) =>
    InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      labelStyle: Get.textTheme.bodyMedium,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Get.theme.dividerColor),
        borderRadius: BorderRadius.circular(WaveConstants.radius),
      ),
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: themeColor, width: 2),
        borderRadius: BorderRadius.circular(WaveConstants.radius),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Get.theme.colorScheme.error, width: 2),
        borderRadius: BorderRadius.circular(WaveConstants.radius),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Get.theme.colorScheme.error),
        borderRadius: BorderRadius.circular(WaveConstants.radius),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Get.theme.dividerColor),
        borderRadius: BorderRadius.circular(WaveConstants.radius),
      ),
      hintStyle: TextStyle(
        color: Get.textTheme.displayMedium!.color,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
PopupMenuThemeData _popupMenuThemeData() => PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(WaveConstants.radius),
      ),
    );

TextTheme _textTheme({bool darkMode = false}) {
  return Get.textTheme.copyWith(
    bodyLarge: Get.textTheme.bodyLarge!.copyWith(
      fontSize: 18,
      height: 1.25,
      fontWeight: FontWeight.w400,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    bodyMedium: Get.textTheme.bodyMedium!.copyWith(
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w400,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    bodySmall: Get.textTheme.bodySmall!.copyWith(
      fontSize: 14,
      height: 1.25,
      fontWeight: FontWeight.w400,
      color: WaveColors.subtitleColor(darkMode: darkMode),
    ),
    titleLarge: Get.textTheme.titleLarge!.copyWith(
      fontSize: 20,
      height: 1.25,
      fontWeight: FontWeight.w500,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    titleMedium: Get.textTheme.titleMedium!.copyWith(
      fontSize: 18,
      height: 1.25,
      fontWeight: FontWeight.w500,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    titleSmall: Get.textTheme.titleSmall!.copyWith(
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w500,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    labelLarge: Get.textTheme.labelLarge!.copyWith(
      fontSize: 15,
      height: 1,
      fontWeight: FontWeight.w500,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    labelMedium: Get.textTheme.labelMedium!.copyWith(
      fontSize: 13,
      height: 1,
      fontWeight: FontWeight.w500,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    labelSmall: Get.textTheme.labelSmall!.copyWith(
      fontSize: 11,
      height: 1,
      fontWeight: FontWeight.w500,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    headlineLarge: Get.textTheme.headlineLarge!.copyWith(
      fontSize: 32,
      height: 1.25,
      fontWeight: FontWeight.w700,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    headlineMedium: Get.textTheme.headlineMedium!.copyWith(
      fontSize: 28,
      height: 1.25,
      fontWeight: FontWeight.w700,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    headlineSmall: Get.textTheme.headlineSmall!.copyWith(
      fontSize: 24,
      height: 1.25,
      fontWeight: FontWeight.w700,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    displayLarge: Get.textTheme.displayLarge!.copyWith(
      fontSize: 78,
      height: 1.25,
      fontWeight: FontWeight.w300,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    displayMedium: Get.textTheme.displayMedium!.copyWith(
      fontSize: 64,
      height: 1.25,
      fontWeight: FontWeight.w300,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    displaySmall: Get.textTheme.displaySmall!.copyWith(
      fontSize: 48,
      height: 1.25,
      fontWeight: FontWeight.w300,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
  );
}

ListTileThemeData _listTileThemeData({bool darkMode = false}) {
  return ListTileThemeData(
    titleTextStyle: Get.textTheme.bodyMedium!.copyWith(
      fontSize: 16,
      height: 1.25,
      fontWeight: FontWeight.w400,
      color: WaveColors.textColor(darkMode: darkMode),
    ),
    subtitleTextStyle: Get.textTheme.bodySmall,
    leadingAndTrailingTextStyle: Get.textTheme.labelLarge,
    // tileColor: Get.theme.cardColor,
  );
}

FloatingActionButtonThemeData _floatingActionButtonThemeData() {
  return FloatingActionButtonThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Get.theme.dividerColor,
        width: WaveConstants.contentBorder,
      ),
      borderRadius: BorderRadius.circular(WaveConstants.radius),
    ),
  );
}

/// ************ Functions ***************

ThemeData _getDefaultThemeData({bool darkMode = false}) {
  return darkMode ? ThemeData.dark() : ThemeData.light();
}
