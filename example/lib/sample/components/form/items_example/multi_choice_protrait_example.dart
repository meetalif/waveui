import 'package:waveui/waveui.dart';

class MultiChoicePortraitInputExamplePage extends StatelessWidget {
  final String _title;

  MultiChoicePortraitInputExamplePage(this._title);

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
            WaveMultiChoicePortraitInputFormItem(
              title: "Natural visit protection period",
              options: [
                "fixed",
                "permanent",
                "unknown",
              ],
              value: [
                "fixed",
                "permanent",
              ],
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
              onChanged: (List<String> oldValue, List<String> newValue) {
                Fluttertoast.showToast(
                  msg:
                      "Click to trigger onChanged callback ${oldValue.length}_${newValue.length}_onChanged",
                );
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "全功能样式：",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveMultiChoicePortraitInputFormItem(
              prefixIconType: WavePrefixIconType.remove,
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
              value: [
                "fixed",
                "permanent",
              ],
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
              onChanged: (List<String> oldValue, List<String> newValue) {
                Fluttertoast.showToast(
                  msg:
                      "Click to trigger onChanged callback ${oldValue.length}_${newValue.length}_onChanged",
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
            WaveMultiChoicePortraitInputFormItem(
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
              value: [
                "fixed",
                "permanent",
              ],
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
              onChanged: (List<String> oldValue, List<String> newValue) {
                Fluttertoast.showToast(
                  msg:
                      "Click to trigger onChanged callback ${oldValue.length}_${newValue.length}_onChanged",
                );
              },
            ),
          ],
        ));
  }
}
