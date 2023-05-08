import 'package:waveui/waveui.dart';

class TitleExamplePage extends StatelessWidget {
  final String _title;

  TitleExamplePage(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaveAppBar(
          title: _title,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Text(
                "Basic style:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTitleFormItem(
              title: "Natural visit protection period",
              operationLabel: "Click operation",
              onTip: () {
                WaveToast.show("Click trigger callback_onTip", context);
              },
              onTap: () {
                WaveToast.show("Click to trigger callback_onTap", context);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "Full Feature Style:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTitleFormItem(
              error: "Required field cannot be empty",
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Tip",
              operationLabel: "Click operation",
              onTip: () {
                WaveToast.show("Click trigger callback_onTip", context);
              },
              onTap: () {
                WaveToast.show("Click to trigger callback_onTap", context);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "no error:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTitleFormItem(
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Tip",
              operationLabel: "Click operation",
              onTip: () {
                WaveToast.show("Click trigger callback_onTip", context);
              },
              onTap: () {
                WaveToast.show("Click to trigger callback_onTap", context);
              },
            ),
          ],
        ));
  }
}
