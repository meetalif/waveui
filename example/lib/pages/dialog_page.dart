import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Example"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          FilledButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Title"),
                    content: Text(
                        "This is a demo content. This is where you place your text or any type of widget."),
                    actions: [
                      TextButton(
                        onPressed: () {},
                        child: Text("Action A"),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Action B"),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text("Open General Dialog"),
          ),
          SizedBox(height: 16),
          FilledButton(
            onPressed: () {
              showAboutDialog(context: context, children: [
                Text("This is an example of how your about dialog looks."),
              ]);
            },
            child: Text("Open About Dialog"),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
