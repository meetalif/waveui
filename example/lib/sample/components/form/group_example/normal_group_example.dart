import 'package:waveui/waveui.dart';

class NormalGroupExample extends StatelessWidget {
  final String _title;

  NormalGroupExample(this._title);

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
            WaveNormalFormGroup(
              title: "Normal Group",
              children: [
                WaveTextInputFormItem(
                  title: "Example Subitem 1",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                      msg: "Click to trigger callback_${newValue}_onChanged",
                    );
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 2",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                      msg: "Click to trigger callback_${newValue}_onChanged",
                    );
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 3",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                      msg: "Click to trigger callback_${newValue}_onChanged",
                    );
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
            WaveNormalFormGroup(
              title: "Normal Group",
              subTitle: "Here is the subtitle",
              deleteLabel: "Delete",
              tipLabel: "Label",
              error: "Required field cannot be empty",
              isRequire: true,
              isEdit: true,
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click trigger callback_onRemoveTap");
              },
              children: [
                WaveTextInputFormItem(
                  title: "Example Subitem 1",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                      msg: "Click to trigger callback_${newValue}_onChanged",
                    );
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 2",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                      msg: "Click to trigger callback_${newValue}_onChanged",
                    );
                  },
                ),
                WaveTextInputFormItem(
                  title: "Example Subitem 3",
                  hint: "Please enter",
                  onChanged: (newValue) {
                    Fluttertoast.showToast(
                      msg: "Click to trigger callback_${newValue}_onChanged",
                    );
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
