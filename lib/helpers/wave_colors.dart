import 'package:flutter/material.dart';

class WaveColors {
  static Color backgroundColor({darkMode = false}) {
    return darkMode ? Colors.grey.shade900 : const Color(0xFFF0F0F0);
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
}
