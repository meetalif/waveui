import 'package:flutter/material.dart';

class WaveColors {
  static Color backgroundColor({darkMode = false}) {
    return darkMode ? Colors.grey.shade900 : Colors.grey.shade100;
  }

  static Color contentBg({darkMode = false}) {
    return darkMode ? const Color(0xff121212) : Colors.white;
  }

  static Color contentFg({darkMode = false}) {
    return darkMode ? Colors.white : Colors.black;
  }

  static Color textColor({darkMode = false}) {
    return darkMode ? Colors.white : Colors.black87;
  }

  static Color subtitleColor({darkMode = false}) {
    return darkMode ? Colors.grey.shade300 : Colors.black54;
  }

  static Color dividerColor = Colors.grey.withOpacity(0.3);
}
