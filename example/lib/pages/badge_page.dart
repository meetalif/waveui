import 'package:flutter/material.dart';

class BadgePage extends StatelessWidget {
  const BadgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge Example"),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          const ListTile(
            title: Text("This is an example of flutter badge class"),
            trailing: Badge(
              label: Text("99+"),
              child: Icon(Icons.notifications_outlined),
            ),
          )
        ],
      ),
    );
  }
}
