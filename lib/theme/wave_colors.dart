import 'package:flutter/material.dart';

class WaveColors {
  static Color background({isDark = false}) {
    return isDark ? const Color(0xFF000000) : const Color(0xFFF5F5F5);
  }

  static Color separator({isDark = false}) {
    return isDark ? const Color(0xFF303030) : const Color(0xFFF0F0F0);
  }

  static Color content({darkMode = false}) {
    return darkMode ? const Color(0xFF141414) : const Color(0xFFFFFFFF);
  }

  static Color contentHighlighted({darkMode = false}) {
    return darkMode ? const Color(0xFFFAFAFA) : const Color(0xFF1D1D1D);
  }

  static Color text({darkMode = false}) {
    return darkMode ? const Color(0xFFDCDCDC) : const Color(0xFF1F1F1F);
  }

  static Color subtitle({darkMode = false}) {
    return darkMode ? const Color(0xFF7E7E7E) : const Color(0xFF8C8C8C);
  }
}
