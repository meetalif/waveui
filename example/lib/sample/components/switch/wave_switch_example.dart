import 'package:waveui/waveui.dart';

class WaveSwitchExample extends StatefulWidget {
  @override
  _WaveSwitchExampleState createState() => _WaveSwitchExampleState();
}

class _WaveSwitchExampleState extends State<WaveSwitchExample> {
  bool value1 = true;
  bool value3 = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WaveAppBar(
        title: 'Switch element',
      ),
      body: SingleChildScrollView(
        child: Column(
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
            WaveBubbleText(
                maxLines: 2,
                text: 'Have selected, unselected, and disabled states'),
            Text(
              'Normal case',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: WaveSwitch(
                value: value1,
                onChanged: (value) {
                  setState(() {
                    value1 = value;
                  });
                },
              ),
            ),
            Text(
              'Disable case',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: WaveSwitch(
                value: true,
                onChanged: (value) {},
              ),
            ),
            Text(
              'Unselected case',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: WaveSwitch(
                value: value3,
                onChanged: (value) {
                  setState(() {
                    value3 = value;
                  });
                },
              ),
            ),
            Text(
              'Disable case',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: WaveSwitch(
                // enabled: false,
                value: false,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
