import 'package:waveui/waveui.dart';

class MultiChoiceInputExamplePage extends StatelessWidget {
  final String _title;

  MultiChoiceInputExamplePage(this._title);

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
            WaveMultiChoiceInputFormItem(
              title: "Natural",
              options: ["Fixed", "Permanent", "Unknown"],
              value: [
                "fixed",
                "permanent",
              ],
              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onTip callback", context);
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback", context);
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback", context);
              },
              onChanged: (List<String> oldValue, List<String>? newValue) {
                Fluttertoast.showToast(
                    msg:
                        "Click to trigger onChanged callback ${oldValue.length}_${newValue!.length}_onChanged",
                    context);
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
            WaveMultiChoiceInputFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              error: "Required field cannot be empty",
              title: "Natural",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              options: [
                "fixed",
                "permanent",
              ],
              value: [
                "fixed",
              ],
              enableList: [true, false],
              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onTip callback", context);
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback", context);
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback", context);
              },
              onChanged: (List<String> oldValue, List<String>? newValue) {
                Fluttertoast.showToast(
                    msg:
                        "Click to trigger onChanged callback ${oldValue.length}_${newValue!.length}_onChanged",
                    context);
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
            WaveMultiChoiceInputFormItem(
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              title: "Natural",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              options: [
                "fixed",
                "permanent",
              ],
              value: [
                "fixed",
              ],
              enableList: [true, true],
              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onTip callback", context);
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback", context);
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback", context);
              },
              onChanged: (List<String> oldValue, List<String> newValue) {
                Fluttertoast.showToast(
                    msg:
                        "Click to trigger onChanged callback ${oldValue.length}_${newValue.length}_onChanged",
                    context);
              },
            ),
          ],
        ));
  }
}
