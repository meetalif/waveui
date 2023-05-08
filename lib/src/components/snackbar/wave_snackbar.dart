import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A styled snackbar is based on getx
class WaveSnackbar {
  /// To show snackbar call this functions
  static show({String? title}) {
    return Get.showSnackbar(GetSnackBar(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      backgroundColor: Get.theme.cardColor.withOpacity(0.7),
      barBlur: 2,
      borderColor: Get.theme.dividerColor,
      borderRadius: 8,
      borderWidth: 0.5,
      animationDuration: Duration(milliseconds: 400),
      boxShadows: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 3,
          offset: Offset(0, 4),
        ),
      ],
      messageText: Text(
        '${title}',
        style: Get.theme.textTheme.bodyMedium,
      ),
    ));
  }
}
