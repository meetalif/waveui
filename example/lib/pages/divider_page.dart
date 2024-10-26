import 'package:flutter/material.dart';

/// DividerExample - Demonstrates multiple uses of the Divider widget with different properties.
class DividerExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider Example'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'Divider Example: Different Styles',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 16.0),
          Text('Example 1: Default Divider'),
          Divider(),
          SizedBox(height: 16.0),

          Text('Example 2: Custom Color and Thickness'),
          Divider(
            color: Colors.blue,
            thickness: 2.0,
          ),
          SizedBox(height: 16.0),

          Text('Example 3: Indented Divider'),
          Divider(
            color: Colors.red,
            thickness: 1.5,
            indent: 20.0,
            endIndent: 20.0,
          ),
          SizedBox(height: 16.0),

          // Example 6: Thick divider with a primary color
          Text('Example 4: Thick Primary Color Divider'),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3.0,
          ),
          SizedBox(height: 16.0),

          Text('Example 5: Thin and Light Divider'),
          Divider(
            color: Colors.grey.shade300,
            thickness: 0.5,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
