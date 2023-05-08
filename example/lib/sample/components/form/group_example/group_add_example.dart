import 'package:waveui/waveui.dart';

class GroupAddExamplePage extends StatelessWidget {
  final String _title;

  GroupAddExamplePage(this._title);

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
            WaveAddLabel(
              title: "Add Group",
              onTap: () {
                WaveToast.show("Click to trigger onTap callback", context);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "full-featured-style-disabled:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveAddLabel(
              isEdit: false,
              title: "Add Group",
              onTap: () {
                WaveToast.show("Click to trigger onTap callback", context);
              },
            ),
          ],
        ));
  }
}
