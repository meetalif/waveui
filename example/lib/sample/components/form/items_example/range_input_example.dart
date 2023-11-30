import 'package:waveui/waveui.dart';

class RangeInputExamplePage extends StatelessWidget {
  final String _title;

  RangeInputExamplePage(this._title);

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
            WaveRangeInputFormItem(
              minController: TextEditingController()..text = "10",
              maxController: TextEditingController()..text = "100",
              title: "Protection Period",
              hintMin: "Minimum range",
              hintMax: "Maximum range",
              minUnit: "Days",
              maxUnit: "day",
              leftMaxCount: 1,
              rightMaxCount: 3,
              inputType: WaveInputType.number,
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
              onMinChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
              },
              onMaxChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
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
            WaveRangeInputFormItem(
              minController: TextEditingController()..text = "10",
              maxController: TextEditingController()..text = "100",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              error: "Required field cannot be empty",
              title: "Protection Period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              isEdit: true,
              hintMin: "Minimum range",
              hintMax: "Maximum range",
              minUnit: "Days",
              maxUnit: "day",
              leftMaxCount: 1,
              rightMaxCount: 3,
              inputType: WaveInputType.number,
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
              onMinChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
              },
              onMaxChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
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
            WaveRangeInputFormItem(
              minController: TextEditingController()..text = "10",
              maxController: TextEditingController()..text = "100",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              title: "Protection Period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              isEdit: true,
              hintMin: "Minimum range",
              hintMax: "Maximum range",
              minUnit: "Days",
              maxUnit: "day",
              leftMaxCount: 2,
              rightMaxCount: 3,
              inputType: WaveInputType.number,
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
              onMinChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
              },
              onMaxChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Text(
                "Can add and delete in disabled state:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveRangeInputFormItem(
              minController: TextEditingController()..text = "10",
              maxController: TextEditingController()..text = "100",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              title: "Protection Period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              isEdit: false,
              isPrefixIconEnabled: true,
              hintMin: "Minimum range",
              hintMax: "Maximum range",
              minUnit: "Days",
              maxUnit: "day",
              leftMaxCount: 2,
              rightMaxCount: 3,
              inputType: WaveInputType.number,
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
              onMinChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
              },
              onMaxChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
              },
            ),
          ],
        ));
  }
}
