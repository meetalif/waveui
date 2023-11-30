import 'package:waveui/waveui.dart';

/// Description: Notification example with button

class WaveNoticeBarWithButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(
        title: 'Notification Style 01',
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
              ),
            ),
            WaveBubbleText(
              maxLines: 3,
              text:
                  'Height 56, label on the left, notification content in the middle, and button on the right. The notification content must be passed. If the label and button copy are empty, they will not be displayed. All colors support customization',
            ),
            Text(
              'Default style',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveNoticeBarWithButton(
              content: 'This is the notification content',
            ),
            Text(
              'normal style',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveNoticeBarWithButton(
              leftTagText: 'task',
              content: 'This is the notification content',
              rightButtonText: 'Go to finish',
              onRightButtonTap: () {
                Fluttertoast.showToast(msg: 'Click the right button');
              },
            ),
            Text(
              'Marquee',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveNoticeBarWithButton(
              leftTagText: 'task',
              content:
                  'This is the notification content of the marquee The notification content of the marquee The notification content of the marquee The notification content of the marquee',
              rightButtonText: 'Go to finish',
              marquee: true,
              onRightButtonTap: () {
                Fluttertoast.showToast(msg: 'Click the right button');
              },
            ),
            Text(
              'Hide left label',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveNoticeBarWithButton(
              content: 'This is the notification content',
              rightButtonText: 'Go to finish',
              onRightButtonTap: () {
                Fluttertoast.showToast(msg: 'Click the right button');
              },
            ),
            Text(
              'Hide right button',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveNoticeBarWithButton(
              leftTagText: 'task',
              content: 'This is the notification content',
            ),
            Text(
              "Notify the copywriter, don't rewind",
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveNoticeBarWithButton(
              leftTagText: 'task',
              content:
                  'This is the notification content This is the notification content This is the notification content This is the notification content This is the notification content',
              rightButtonText: 'Go to finish',
              onRightButtonTap: () {
                Fluttertoast.showToast(msg: 'Click the right button');
              },
            ),
            Text(
              'Custom text and background color',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveNoticeBarWithButton(
              leftTagText: 'task',
              leftTagBackgroundColor: Color(0xFFE0EDFF),
              leftTagTextColor: Color(0xFF0984F9),
              content:
                  'This is the notification content This is the notification content This is the notification content This is the notification content This is the notification content',
              backgroundColor: Color(0xFFEBFFF7),
              contentTextColor: Color(0xFF00AE66),
              rightButtonText: 'Go to finish',
              rightButtonBorderColor: Color(0xFF0984F9),
              rightButtonTextColor: Color(0xFF0984F9),
              onRightButtonTap: () {
                Fluttertoast.showToast(msg: 'Click the right button');
              },
            ),
            SizedBox(
              height: 50,
            ),
          ])),
    );
  }
}
