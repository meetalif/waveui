import 'package:example/models/widget_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WaveUI"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final widget = widgets[index];
          if (index == 0 || (widget.group != widgets[index - 1].group)) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Text(widget.group),
                ),
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => widget.page,
                  )),
                  title: Text(widget.title),
                  subtitle: Text(widget.subtitle),
                ),
              ],
            );
          }
          return ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => widget.page,
            )),
            title: Text(widget.title),
            subtitle: Text(widget.subtitle),
          );
        },
        itemCount: widgets.length,
      ),
    );
  }
}
