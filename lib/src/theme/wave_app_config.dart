import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WaveAppConfig {
  static const double DEFAULT_ELEVATION = 4;
  static const double DEFAULT_REDIUS = 8;
  static const EdgeInsets DEFAULT_PADDING =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const List<BoxShadow> DEFAULT_SHADOW = <BoxShadow>[
    BoxShadow(
      blurRadius: 8,
      spreadRadius: 2,
      color: Color.fromARGB(92, 158, 158, 158),
    ),
  ];
  static LinearGradient DEFAULT_GRADIENT = LinearGradient(
    colors: <Color>[
      Get.theme.colorScheme.primary,
      Get.theme.colorScheme.primary.withOpacity(0.7),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static ImageFilter DEFAULT_BLUR = ImageFilter.blur(sigmaX: 5, sigmaY: 5);
}
