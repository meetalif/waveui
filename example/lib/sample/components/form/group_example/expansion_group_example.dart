import 'package:waveui/waveui.dart';

class ExpansionGroupExample extends StatelessWidget {
  final String _title;

  ExpansionGroupExample(this._title);

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
                "Basic Style -Collapse",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveExpandFormGroup(
              title: "Expand and collapse group",
              isExpand: false,
              children: [
                WaveTextInputFormItem(
                  title: "Example Subitem 1",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 2",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 3",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Text(
                "Basic Style -Expand",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveExpandFormGroup(
              title: "Expand and collapse group",
              isExpand: true,
              children: [
                WaveTextInputFormItem(
                  title: "Example Subitem 1",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 2",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 3",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
              ],
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
            WaveExpandFormGroup(
              title: "Expand and collapse group",
              subTitle: "Here is the subtitle",
              deleteLabel: "Delete",
              tipLabel: "Label",
              error: "Required field cannot be empty",
              isRequire: true,
              isEdit: true,
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click trigger callback_onRemoveTap", context);
              },
              children: [
                WaveTextInputFormItem(
                  title: "Example Subitem 1",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 2",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 3",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                        msg: "Click to trigger callback_${newValue}_onChanged",
                        context);
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
