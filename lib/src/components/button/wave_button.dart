import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapped/tapped.dart';

class WaveButton extends StatelessWidget {
  const WaveButton({
    super.key,
    this.title,
    this.onTap,
    this.isPrimary = true,
    this.isEnabled = true,
  });

  final String? title;
  final Function()? onTap;
  final bool isPrimary;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return Tapped(
      onTap: isEnabled ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isEnabled
              ? Get.theme.colorScheme.primary
              : Get.theme.colorScheme.primary.withOpacity(0.3),
        ),
        padding:
            EdgeInsets.symmetric(horizontal: 16, vertical: isPrimary ? 8 : 6),
        child: Center(
          child: Text(
            '$title',
            style: Get.textTheme.labelLarge!.copyWith(
              color: isEnabled ? Colors.white : Colors.white.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
