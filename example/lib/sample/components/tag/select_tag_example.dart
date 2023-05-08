import 'package:waveui/waveui.dart';

///Tab selection view
class SelectTagExamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SelectTagExamplePageState();
}

class SelectTagExamplePageState extends State<SelectTagExamplePage> {
  List<String> tagList = [
    'This is a long long long long long long long long long long long long tag',
    'Label Information',
    'Tag information label information',
    'Label Information',
    'Tag InfoTag InfoTag InfoTag Info'
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WaveScaffold(
      appBar: WaveAppBar(
        title: 'WaveSelectTag',
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[_selectButtonExampleWidget(context)],
        ),
      ),
    );
  }

  Widget _selectButtonExampleWidget(context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'WaveSelectTag',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            'radio function',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          WaveSelectTag(
              tags: tagList,
              spacing: 12,
              tagWidth: _getTagWidth(context),
              initTagState: [true],
              onSelect: (selectedIndexes) {
                WaveToast.show(selectedIndexes.toString(), context);
              }),
          Text(
            'Multiple selection function',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          WaveSelectTag(
              isSingleSelect: false,
              tags: tagList,
              spacing: 12,
              tagWidth: _getTagWidth(context),
              initTagState: [true, false, true],
              onSelect: (selectedIndexes) {
                WaveToast.show(selectedIndexes.toString(), context);
              }),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Adaptive label for fluid layout',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          WaveSelectTag(
              tags: [
                'Label',
                'Select label',
                'Unchecked label',
                'Label rounded corners, font size, color value, height can be theme configuration',
                'The component can be set to a fixed width or a fluid layout',
                'Theme customization can configure the minimum width, the minimum width is now limited to 110'
              ],
              isSingleSelect: false,
              fixWidthMode: false,
              spacing: 12,
              onSelect: (selectedIndexes) {
                WaveToast.show(selectedIndexes.toString(), context);
              }),
          SizedBox(
            height: 10,
          ),
          Text(
            'Horizontal slide, equal width label',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          WaveSelectTag(
              tags: tagList,
              tagWidth: _getTagWidth(context),
              softWrap: false,
              onSelect: (index) {
                WaveToast.show("$index is selected", context);
              }),
          SizedBox(
            height: 10,
          ),
          Text(
            'Adaptive width label for horizontal sliding (minimum width 75)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          WaveSelectTag(
              tags: tagList,
              tagWidth: _getTagWidth(context),
              softWrap: false,
              fixWidthMode: false,
              onSelect: (index) {
                WaveToast.show("$index is selected", context);
              }),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  double _getTagWidth(context, {int rowCount = 4}) {
    double leftRightPadding = 40;
    double rowSpace = 12;
    return (MediaQuery.of(context).size.width -
            leftRightPadding -
            rowSpace * (rowCount - 1)) /
        rowCount;
  }
}
