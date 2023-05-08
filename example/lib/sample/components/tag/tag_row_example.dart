import 'package:waveui/waveui.dart';

class RowTagExample extends StatefulWidget {
  @override
  _RowTagExampleState createState() => _RowTagExampleState();
}

class _RowTagExampleState extends State<RowTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WaveAppBar(
        title: 'Label Combination',
      ),
      body: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.start,
        children: [
          WaveTagCustom(
            tagText: 'custom label',
          ),
          WaveTagCustom(
            tagText: 'tag',
          ),
          WaveTagCustom.buildBorderTag(tagText: 'Label 1'),
          WaveTagCustom.buildBorderTag(tagText: 'Tag 2'),
          WaveTagCustom.buildBorderTag(
              tagText: 'Special long long long long long long label'),
          WaveTagCustom(tagText: 'Level 1 Tag'),
          WaveTagCustom(tagText: 'secondary tag'),
          WaveTagCustom(tagText: 'other tags'),
          WaveTagCustom(tagText: 'secondary tag'),
          WaveTagCustom(tagText: 'Level 1 Tag'),
          WaveTagCustom(tagText: 'secondary tag'),
        ],
        spacing: 5,
        runSpacing: 5,
      ),
    );
  }
}
