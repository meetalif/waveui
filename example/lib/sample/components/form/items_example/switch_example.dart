import 'package:waveui/waveui.dart';

class SwitchInputExamplePage extends StatefulWidget {
  final String _title;

  SwitchInputExamplePage(this._title);

  @override
  State<StatefulWidget> createState() {
    return SwitchInputExampleState();
  }
}

class SwitchInputExampleState extends State<SwitchInputExamplePage> {
  bool _isFirstSwitchOn = true;
  bool _isSecondSwitchOn = true;
  bool _isThirdSwitchOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaveAppBar(
          title: widget._title,
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
            WaveSwitchFormItem(
              title: "Natural visit protection period",
              value: _isFirstSwitchOn,
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
                setState(() {
                  _isFirstSwitchOn = newValue;
                });
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
            WaveSwitchFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              error: "Required field cannot be empty",
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              value: _isSecondSwitchOn,
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
                setState(() {
                  _isSecondSwitchOn = newValue;
                });
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
            WaveSwitchFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: false,
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              value: _isThirdSwitchOn,
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
                setState(() {
                  _isThirdSwitchOn = newValue;
                });
                WaveToast.show(
                    "Click trigger callback ${oldValue}_${newValue}_onChanged",
                    context);
              },
            ),
          ],
        ));
  }
}
