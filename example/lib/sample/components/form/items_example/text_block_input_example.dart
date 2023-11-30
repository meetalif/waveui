import 'package:waveui/waveui.dart';

class TextBlockInputExamplePage extends StatelessWidget {
  final String _title;

  TextBlockInputExamplePage(this._title);

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
            WaveTextBlockInputFormItem(
              controller: TextEditingController()..text = "hello",
              title: "Remarks",
              hint: "Please enter",
              minLines: 1,
              maxLines: 5,
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
              onChanged: (newValue) {
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
            WaveTextBlockInputFormItem(
              controller: TextEditingController()..text = "hello",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              error: "Required field cannot be empty",
              title: "Remarks",
              subTitle: "Calculation based on construction area",
              tipLabel: "Tip",
              hint: "Please enter",
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
              onChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
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
            WaveTextBlockInputFormItem(
              controller: TextEditingController()..text = "hello",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              title: "Remarks",
              subTitle: "Calculation based on construction area",
              tipLabel: "Tip",
              hint: "Please enter",
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
              onChanged: (newValue) {
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
            WaveTextBlockInputFormItem(
              controller: TextEditingController()..text = "hello",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: false,
              isPrefixIconEnabled: true,
              title: "Remarks",
              subTitle: "Calculation based on construction area",
              tipLabel: "Tip",
              hint: "Please enter",
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
              onChanged: (newValue) {
                Fluttertoast.showToast(
                  msg: "Click to trigger callback_${newValue}_onChanged",
                );
              },
            ),
          ],
        ));
  }
}
