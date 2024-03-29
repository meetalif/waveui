import 'package:waveui/waveui.dart';

class RadioInputExamplePage extends StatelessWidget {
  final String _title;

  RadioInputExamplePage(this._title);

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
            WaveRadioInputFormItem(
              title: "Natural visit protection period",
              options: [
                "fixed",
                "permanent",
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
            WaveRadioInputFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              error: "Required field cannot be empty",
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              options: [
                "fixed",
                "permanent",
              ],
              value: "Permanent",
              enableList: [true, false],
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
                    msg: "点击触发回调${oldValue}_${newValue}_onChanged");
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "no error：",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveRadioInputFormItem(
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              options: [
                "fixed",
                "permanent",
              ],
              value: "Permanent",
              enableList: [true, true],
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
                "autoLayout:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveRadioInputFormItem.autoLayout(
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              error: "Required field cannot be empty",
              title: "autoLayout",
              layoutRatio: 0.25,
              titleMaxLines: 3,
              subTitle: "Here is the subtitle",
              options: [
                "fixed",
                "permanent",
              ],
            ),
          ],
        ));
  }
}
