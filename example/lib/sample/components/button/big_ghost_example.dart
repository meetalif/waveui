import 'package:waveui/waveui.dart';

class BigGhostButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WaveAppBar(
        title: 'big ghost button',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                    'The width of the button is the width of the screen, the height of the button is 48, the transparency of the background color of the button is 5% of the theme color, and the rounded corner of the button is 4. \n'
                    "The text of the 'button can be displayed in the center of one line at most, with font size 16, font w500, and text color as the theme color.",
              ),
              Text(
                'Normal case',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 28,
                ),
              ),
              WaveBigGhostButton(
                title: 'Submit',
                onTap: () {
                  WaveToast.show('clicked the button', context);
                },
              ),
              Text(
                'The copy is too long',
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 28,
                ),
              ),
              WaveBigGhostButton(
                title:
                    'The copy of the button is very long The copy of the button is very long The copy of the button is very long The copy of the button is very long',
                onTap: () {
                  WaveToast.show('clicked the button', context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
