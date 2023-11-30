import 'package:waveui/waveui.dart';

class RadioPortraitInputExamplePage extends StatelessWidget {
  final String _title;

  RadioPortraitInputExamplePage(this._title);

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
            WaveRadioPortraitInputFormItem(
              title: "Natural visit protection period",
              options: [
                "fixed",
                "permanent",
                "unknown",
              ],
              value: "Permanent",
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
              onChanged: (oldValue, newValue) {
                Fluttertoast.showToast(
                  msg:
                      "Click trigger callback ${oldValue}_${newValue}_onChanged",
                );
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
            WaveRadioPortraitInputFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              error: "Required field cannot be empty",
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              options: [
                "fixed",
                "permanent",
                "unknown",
              ],
              value: "Permanent",
              enableList: [true, true, false],
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
              onChanged: (oldValue, newValue) {
                Fluttertoast.showToast(
                  msg:
                      "Click trigger callback ${oldValue}_${newValue}_onChanged",
                );
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
            WaveRadioPortraitInputFormItem(
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              options: [
                "fixed",
                "permanent",
                "unknown",
              ],
              value: "Permanent",
              enableList: [true, true, false],
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
              onChanged: (oldValue, newValue) {
                Fluttertoast.showToast(
                  msg:
                      "Click trigger callback ${oldValue}_${newValue}_onChanged",
                );
              },
            ),
          ],
        ));
  }
}
