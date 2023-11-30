import 'package:waveui/waveui.dart';

class TextSelectInputExamplePage extends StatelessWidget {
  final String _title;

  TextSelectInputExamplePage(this._title);

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
            WaveTextSelectFormItem(
              title: "Certificate Type",
              onTip: () {
                Fluttertoast.showToast(msg: "Click to trigger onTip callback");
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback");
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback");
              },
              onTap: () {
                Fluttertoast.showToast(msg: "Click to trigger callback_onTap");
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
            WaveTextSelectFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              error: "Required field cannot be empty",
              title: "Certificate Type",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              onTip: () {
                Fluttertoast.showToast(msg: "Click to trigger onTip callback");
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback");
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback");
              },
              onTap: () {
                Fluttertoast.showToast(msg: "Click to trigger callback_onTap");
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
            WaveTextSelectFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              title: "Certificate Type",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              onTip: () {
                Fluttertoast.showToast(msg: "Click to trigger onTip callback");
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback");
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback");
              },
              onTap: () {
                Fluttertoast.showToast(msg: "Click to trigger callback_onTap");
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "autoLayout:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTextSelectFormItem.autoLayout(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              error: "Required field cannot be empty",
              title: "Certificate Type",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              onTip: () {
                Fluttertoast.showToast(msg: "Click to trigger onTip callback");
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback");
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback");
              },
              onTap: () {
                Fluttertoast.showToast(msg: "Click to trigger callback_onTap");
              },
            ),
          ],
        ));
  }
}
