import 'package:waveui/waveui.dart';

class BaseTitleExamplePage extends StatelessWidget {
  final String _title;

  BaseTitleExamplePage(this._title);

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
            WaveBaseTitle(
              title: "Basic Style",
              subTitle: "Here is the subtitle",
              onTip: () {
                Fluttertoast.showToast(
                  msg: "Click trigger callback_onTip",
                );
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "Customize the right area view style:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveBaseTitle(
              error: "Required field cannot be empty",
              title: "Full Feature Style",
              subTitle: "Here is the subtitle",
              tipLabel: "Tip",
              isRequire: true,
              customActionWidget: Container(
                color: Colors.lightBlue,
                child: Center(
                    child: Text('I am a custom view',
                        style: TextStyle(color: Colors.white))),
              ),
              onTip: () {
                Fluttertoast.showToast(
                  msg: "Click trigger callback_onTip",
                );
              },
            ),
          ],
        ));
  }
}
