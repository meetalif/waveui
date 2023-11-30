import 'package:waveui/waveui.dart';

class RatioInputExamplePage extends StatelessWidget {
  final String _title;

  RatioInputExamplePage(this._title);

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
            WaveRatioInputFormItem(
              controller: TextEditingController()..text = "1.6",
              title: "Parking Space Ratio",
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
              onChanged: (newValue) {
                Fluttertoast.showToast(
                    msg: "Click to trigger callback_${newValue}_onChanged",
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
            WaveRatioInputFormItem(
              controller: TextEditingController()..text = "1.6",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              error: "Required field cannot be empty",
              title: "Parking Space Ratio",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
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
              onChanged: (newValue) {
                Fluttertoast.showToast(
                    msg: "Click to trigger callback_${newValue}_onChanged",
                    context);
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
            WaveRatioInputFormItem(
              controller: TextEditingController()..text = "1.6",
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              isEdit: true,
              title: "Parking Space Ratio",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
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
              onChanged: (newValue) {
                Fluttertoast.showToast(
                    msg: "Click to trigger callback_${newValue}_onChanged",
                    context);
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
            WaveRatioInputFormItem(
              controller: TextEditingController()..text = "1.6",
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              isEdit: false,
              isPrefixIconEnabled: true,
              title: "Parking Space Ratio",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
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
              onChanged: (newValue) {
                Fluttertoast.showToast(
                    msg: "Click to trigger callback_${newValue}_onChanged",
                    context);
              },
            ),
          ],
        ));
  }
}
