import 'package:waveui/waveui.dart';

class BorderTagExample extends StatefulWidget {
  @override
  _BorderTagExampleState createState() => _BorderTagExampleState();
}

class _BorderTagExampleState extends State<BorderTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(
        title: "Label with Border",
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'rule',
          style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        WaveBubbleText(maxLines: 4, text: 'text size 11, spacing 3'),
        Text(
          'Normal case',
          style: TextStyle(
            color: Color(0xFF222222),
            fontSize: 28,
          ),
        ),
        WaveTagCustom.buildBorderTag(
          tagText: 'Inventoryed',
        ),
        Text(
          'Normal case 1',
          style: TextStyle(
            color: Color(0xFF222222),
            fontSize: 28,
          ),
        ),
        WaveTagCustom.buildBorderTag(
          tagText: 'Authentication passed',
          textColor: Colors.red,
          borderColor: Colors.red,
          borderWidth: 2,
          fontSize: 24,
          textPadding: EdgeInsets.all(6),
        ),
      ],
    );
  }
}
