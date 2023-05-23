import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A styled snackbar is based on getx
class WaveSnackbar {
  /// To show snackbar call this functions
  static show({String? title, Widget? button}) {
    return Get.showSnackbar(GetSnackBar(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      backgroundColor: Get.theme.colorScheme.background.withOpacity(0.7),
      barBlur: 2,
      borderColor: Get.theme.dividerColor,
      borderRadius: 8,
      borderWidth: 0.5,
      duration: 3.seconds,
      animationDuration: const Duration(milliseconds: 400),
      boxShadows: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 2),
        ),
      ],
      messageText: Text(
        '$title',
        style: Get.theme.textTheme.bodyMedium,
      ),
      mainButton: button,
    ));
  }
}
