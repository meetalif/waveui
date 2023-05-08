import 'package:waveui/waveui.dart';

class StarInputExamplePage extends StatelessWidget {
  final String _title;

  StarInputExamplePage(this._title);

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
            WaveStarsFormItem(
              title: "Natural visit protection period",
              sumStar: 5,
              value: 2,
              onTip: () {
                WaveToast.show("Click to trigger onTip callback", context);
              },
              onAddTap: () {
                WaveToast.show("Click to trigger onAddTap callback", context);
              },
              onRemoveTap: () {
                WaveToast.show(
                    "Click to trigger onRemoveTap callback", context);
              },
              onChanged: (oldValue, newValue) {
                WaveToast.show(
                    "Click trigger callback ${oldValue}_${newValue}_onChanged",
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
            WaveStarsFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              error: "Required field cannot be empty",
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "",
              sumStar: 4,
              value: 2,
              onTip: () {
                WaveToast.show("Click to trigger onTip callback", context);
              },
              onAddTap: () {
                WaveToast.show("Click to trigger onAddTap callback", context);
              },
              onRemoveTap: () {
                WaveToast.show(
                    "Click to trigger onRemoveTap callback", context);
              },
              onChanged: (oldValue, newValue) {
                WaveToast.show(
                    "Click trigger callback ${oldValue}_${newValue}_onChanged",
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
            WaveStarsFormItem(
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              isEdit: true,
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "",
              sumStar: 4,
              value: 2,
              onTip: () {
                WaveToast.show("Click to trigger onTip callback", context);
              },
              onAddTap: () {
                WaveToast.show("Click to trigger onAddTap callback", context);
              },
              onRemoveTap: () {
                WaveToast.show(
                    "Click to trigger onRemoveTap callback", context);
              },
              onChanged: (oldValue, newValue) {
                WaveToast.show(
                    "Click trigger callback ${oldValue}_${newValue}_onChanged",
                    context);
              },
            ),
          ],
        ));
  }
}
