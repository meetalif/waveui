import 'package:flutter/material.dart';

/// PopupMenuExample - Demonstrates how to use a PopupMenuButton in Flutter.
///
/// This example shows how to add a PopupMenuButton widget, customize its items,
/// and handle selection in a way that integrates with the app's theme.
class PopupMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Example'),
        actions: [
          // Add a popup menu button as an action in the app bar
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle the selected menu item
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Selected: $value')),
              );
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              // Define menu items
              PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
              PopupMenuItem<String>(
                value: 'Option 3',
                child: Text('Option 3'),
              ),
              PopupMenuDivider(),
              PopupMenuItem<String>(
                value: 'Option 4',
                child: Icon(Icons.logout),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Text(
            'Tap the menu icon on the top right to open the popup menu.',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
