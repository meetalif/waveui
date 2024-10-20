import 'package:example/pages/button_page.dart';
import 'package:flutter/material.dart';

class WidgetModel {
  final String group;
  final String title;
  final String subtitle;
  final Widget page;

  WidgetModel({
    required this.group,
    required this.title,
    required this.subtitle,
    required this.page,
  });
}

final List<WidgetModel> widgets = [
  WidgetModel(
    group: "Basic",
    title: "Button",
    subtitle: "To trigger an operation.",
    page: const ButtonPage(),
  ),
];
