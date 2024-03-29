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
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: const Text(
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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: const Text(
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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: const Text(
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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: const Text(
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
