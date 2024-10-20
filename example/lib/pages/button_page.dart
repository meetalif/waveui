import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Example"),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
                "A button means an operation (or a series of operations). Clicking a button will trigger its corresponding business logic.\n\nIn WaveUI we provide 5 types of button."),
          ),
          Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Filled Button",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                const MarkdownBody(
                    data:
                        """This is `FilledButton()` used for the main action, there can be at most one `FilledButton()` in a section.

Pass `null` on `onPressed` field on the `FilledButton()` to make it disabled."""),
                const SizedBox(height: 16),
                Row(children: [
                  FilledButton(onPressed: () {}, child: const Text("Default")),
                  const Spacer(),
                  const FilledButton(onPressed: null, child: Text("Disabled")),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  FilledButton.tonal(
                    onPressed: () {},
                    child: const Text("Tonal"),
                  ),
                  const Spacer(),
                  FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    label: const Text("Icon and Text"),
                  ),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  FilledButton.tonalIcon(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    label: const Text("Tonal and Icon"),
                  ),
                ]),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Elevated Button",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                Row(children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Default")),
                  const Spacer(),
                  const ElevatedButton(
                      onPressed: null, child: Text("Disabled")),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    label: const Text("Icon and Text"),
                  ),
                ]),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Outlined Button",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                Row(children: [
                  OutlinedButton(
                      onPressed: () {}, child: const Text("Default")),
                  const Spacer(),
                  const OutlinedButton(
                      onPressed: null, child: Text("Disabled")),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    label: const Text("Icon and Text"),
                  ),
                ]),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Text Button",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                Row(children: [
                  TextButton(onPressed: () {}, child: const Text("Default")),
                  const Spacer(),
                  const TextButton(onPressed: null, child: Text("Disabled")),
                ]),
                const SizedBox(height: 16),
                Row(children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                    label: const Text("Icon and Text"),
                  ),
                ]),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            color: Theme.of(context).cardColor,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Icon Button",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                Row(children: []),
                const SizedBox(height: 16),
                Row(children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
                  IconButton(onPressed: null, icon: const Icon(Icons.person)),
                  IconButton.outlined(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                  ),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
