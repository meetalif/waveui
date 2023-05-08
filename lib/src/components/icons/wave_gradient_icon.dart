import 'package:flutter/material.dart';
import 'package:waveui/src/theme/wave_app_config.dart';

class WaveGradientIcon extends StatelessWidget {
  WaveGradientIcon({
    required this.icon,
    this.size = 28,
    this.gradient,
  });

  final IconData icon;
  final double size;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient == null
            ? WaveAppConfig.DEFAULT_GRADIENT.createShader(rect)
            : gradient!.createShader(rect);
      },
    );
  }
}
