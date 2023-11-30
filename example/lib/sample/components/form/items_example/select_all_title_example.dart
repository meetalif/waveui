import 'package:waveui/waveui.dart';

class SelectAllTitleExamplePage extends StatelessWidget {
  final String _title;

  SelectAllTitleExamplePage(this._title);

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
            WaveSelectAllTitle(
              title: "Basic Style",
              subTitle: "Here is the subtitle",
              selectText: 'Select all titles',
              selectState: false,
              onSelectAll: (int index, bool isSelect) {
                Fluttertoast.showToast(
                    msg: "all selection callback_onSelectAll", context);
              },
              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click trigger callback_onTip", context);
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
            WaveSelectAllTitle(
              error: "Required field cannot be empty",
              title: "Full Feature Style",
              subTitle: "Here is the subtitle",
              selectText: 'Select all title copy',
              tipLabel: "Tip",
              isRequire: true,
              customActionWidget: Container(
                color: Colors.lightBlue,
                child: Center(
                    child: Text('I am a custom view',
                        style: TextStyle(color: Colors.white))),
              ),
              onSelectAll: (int index, bool isSelect) {
                Fluttertoast.showToast(
                    msg: "all selection callback_onSelectAll", context);
              },
              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click trigger callback_onTip", context);
              },
            ),
          ],
        ));
  }
}
