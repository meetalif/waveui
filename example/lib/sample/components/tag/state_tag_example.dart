import 'package:waveui/waveui.dart';

class StateTagExample extends StatefulWidget {
  @override
  _StateTagExampleState createState() => _StateTagExampleState();
}

class _StateTagExampleState extends State<StateTagExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WaveAppBar(
        title: 'Status Corner Label',
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
            WaveBubbleText(maxLines: 4, text: 'same as custom label'),
            Text(
              'waiting state',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveStateTag(
              tagText: 'To be done',
              tagState: TagState.waiting,
            ),
            Text(
              'failure status',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveStateTag(
              tagText: 'failure state',
              tagState: TagState.invalidate,
            ),
            Text(
              'Operating status',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveStateTag(
              tagText: 'in progress',
              tagState: TagState.running,
            ),
            Text(
              'failure status',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveStateTag(
              tagText: 'failure state',
              tagState: TagState.failed,
            ),
            Text(
              'Success Status',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveStateTag(
              tagText: 'Success status',
              tagState: TagState.succeed,
            ),
            Text(
              'customize',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveStateTag(
              backgroundColor: Colors.green,
              textColor: Colors.white,
              tagText:
                  'custom label custom label custom label custom label custom label custom label custom label custom label custom label',
            ),
            Container(
              height: 20,
            ),
            WaveStateTag(
              tagText:
                  'Custom label custom label custom label long special label custom label custom label',
            ),
            Text(
              'Exceptional case: the copy is extremely long',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveStateTag(
              tagText:
                  'Title very long very long very long very long very long very long very long very long title very long very long very long very long very long very long very long very long very long very long very long very long very long very long Very long',
            ),
          ],
        ),
      ),
    );
  }
}
