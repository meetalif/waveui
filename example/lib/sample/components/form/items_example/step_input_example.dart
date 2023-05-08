import 'package:waveui/waveui.dart';

class StepInputExamplePage extends StatefulWidget {
  final String title;

  const StepInputExamplePage({Key? key, this.title = '示例'}) : super(key: key);

  @override
  State<StepInputExamplePage> createState() => _StepInputExamplePageState();
}

class _StepInputExamplePageState extends State<StepInputExamplePage> {
  TextEditingController _manualInputController = TextEditingController()
    ..text = '23';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaveAppBar(
          title: widget.title,
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
            WaveStepInputFormItem(
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              value: 3,
              maxLimit: 5,
              minLimit: 1,
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
            WaveStepInputFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              error: "Required field cannot be empty",
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              maxLimit: 5,
              minLimit: 1,
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
                "no error：",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveStepInputFormItem(
              prefixIconType: WavePrefixIconType.remove,
              isRequire: true,
              isEdit: true,
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              maxLimit: 5,
              minLimit: 1,
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
            WaveStepInputFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              canManualInput: true,
              controller: _manualInputController,
              title: "Manually input",
              subTitle:
                  "The controller can be passed in to set the initial value",
              maxLimit: 99,
              minLimit: 0,
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
                    "Click trigger callback_${oldValue}_${newValue}_onChanged",
                    context);
              },
            ),
          ],
        ));
  }
}
