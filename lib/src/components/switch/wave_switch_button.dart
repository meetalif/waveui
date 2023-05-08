import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WaveSwitch extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  const WaveSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: value,
      onChanged: onChanged,
      activeColor: Get.theme.colorScheme.primary,
    );
  }
}
