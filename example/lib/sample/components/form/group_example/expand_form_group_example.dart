import 'package:waveui/waveui.dart';

class ExpendFormGroupExample extends StatelessWidget {
  final String _title;

  ExpendFormGroupExample(this._title);

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
                "Basic Style",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveExpandableGroup(
              title: "Expand and collapse group",
              subtitle: "Subtitle with arrow type",
              backgroundColor: Colors.blue,
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
