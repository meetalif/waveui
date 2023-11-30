import 'package:waveui/waveui.dart';

class GeneralFormExamplePage extends StatelessWidget {
  final String _title;

  GeneralFormExamplePage(this._title);

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
              child: Text("Basic style:",
                  style: TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 22,
                  )),
            ),
            WaveGeneralFormItem(
              title: "Natural visit protection period",
              subTitle: "Here is the subtitle",
              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onTip callback");
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback");
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback");
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
            WaveGeneralFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              error: "Required field cannot be empty",
              titleWidget: Text("Natural visit protection period"),
              subTitleWidget: Text("Here is the subtitle"),
              tipLabel: "Label",
              operateWidget: Text("Right side operation area"),
              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onTip callback");
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback");
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback");
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
            WaveGeneralFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: true,
              titleWidget: Text("Natural visit protection period"),
//subTitleWidget: Text("Here is the subtitle"),
              tipLabel: "Label",
              operateWidget: Text("Right side operation area"),

              onTip: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onTip callback");
              },
              onAddTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onAddTap callback");
              },
              onRemoveTap: () {
                Fluttertoast.showToast(
                    msg: "Click to trigger onRemoveTap callback");
              },
            ),
          ],
        ));
  }
}
