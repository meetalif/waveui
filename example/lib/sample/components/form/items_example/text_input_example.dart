import 'package:waveui/waveui.dart';

class TextInputExamplePage extends StatelessWidget {
  final String _title;

  TextInputExamplePage(this._title);

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
            WaveTextInputFormItem(
              controller: TextEditingController()..text = "300",
              title: "Total House Price",
              unit: "ten thousand",
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
                "Full Feature Style:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTextInputFormItem(
              controller: TextEditingController()..text = "300",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              error: "Required field cannot be empty",
              title: "Total House Price",
              subTitle: "Calculation based on construction area",
              tipLabel: "Loan calculation",
              unit: "ten thousand",
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
            WaveTextInputFormItem(
              controller: TextEditingController()..text = "300",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              title: "Total House Price",
              subTitle: "Calculation based on construction area",
              tipLabel: "Loan calculation",
              unit: "ten thousand",
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
            WaveTextInputFormItem(
              controller: TextEditingController()..text = "300",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: false,
              isPrefixIconEnabled: true,
              title: "Total House Price",
              subTitle: "Calculation based on construction area",
              tipLabel: "Loan calculation",
              unit: "ten thousand",
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
