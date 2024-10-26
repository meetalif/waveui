import 'package:example/pages/badge_page.dart';
import 'package:example/pages/button_page.dart';
import 'package:example/pages/date_time_picker_page.dart';
import 'package:example/pages/dialog_page.dart';
import 'package:example/pages/divider_page.dart';
import 'package:example/pages/popup_menu_page.dart';
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
  WidgetModel(
    group: "Basic",
    title: "Badge",
    subtitle: "Highlight or mark any object.",
    page: const BadgePage(),
  ),
  WidgetModel(
    group: "Basic",
    title: "Popup Menu",
    subtitle: "Highlight or mark any object.",
    page: PopupMenuPage(),
  ),
  WidgetModel(
    group: "Basic",
    title: "Divider",
    subtitle: "Highlight or mark any object.",
    page: DividerExamplePage(),
  ),
  WidgetModel(
    group: "Basic",
    title: "Date Time Picker",
    subtitle: "Pick date or pick time",
    page: DateTimePickerExample(),
  ),
  WidgetModel(
    group: "Basic",
    title: "Dialog Example",
    subtitle: "Dialog Example",
    page: DialogPage(),
  ),
];
