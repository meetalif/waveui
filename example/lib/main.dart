import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:waveui/theme/wave_theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WaveUI Demo',
      theme: WaveTheme.config(Colors.blue, isDark: false),
      home: const HomePage(),
    );
  }
}
