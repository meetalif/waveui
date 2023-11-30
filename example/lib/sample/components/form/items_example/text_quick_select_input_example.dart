import 'package:waveui/waveui.dart';

class TextQuickSelectInputExamplePage extends StatefulWidget {
  final String _title;

  TextQuickSelectInputExamplePage(this._title);

  @override
  State<StatefulWidget> createState() {
    return _TextQuickSelectInputExamplePageState(this._title);
  }
}

class _TextQuickSelectInputExamplePageState
    extends State<TextQuickSelectInputExamplePage> {
  final String _title;
  String selectedStr = '';
  String selectedStrAllFunctionExample = '';
  List<String> options = ['选项1', '选项2', '选项3', '选项4', '选项5', '选项6', '选项7'];
  late List<bool> status;
  List<bool>? statusAllFunctionExample;

  _TextQuickSelectInputExamplePageState(this._title);

  @override
  void initState() {
    super.initState();

    status = List.filled(options.length, false);
    statusAllFunctionExample = List.filled(options.length, false);
  }

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
            WaveTextQuickSelectFormItem(
              title: "Certificate Type",
              btnsTxt: options,
              value: selectedStr,
              //selectBtnList: status,
              isBtnsScroll: true,
              onBtnSelectChanged: (int index) {
                status[index] = !status[index];
                if (status[index]) {
                  selectedStr += '${options[index]} ';
                } else if (selectedStr.contains(options[index])) {
                  selectedStr =
                      selectedStr.replaceFirst('${options[index]} ', '');
                }
                Fluttertoast.showToast(
                  msg:
                      "Click to trigger onBtnSelectChanged callback.\n index:$index",
                );
                setState(() {});
              },
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
              onTap: () {
                Fluttertoast.showToast(msg: "Click to trigger callback_onTap");
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
            WaveTextQuickSelectFormItem(
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              btnsTxt: options,
              selectBtnList: statusAllFunctionExample,
              value: selectedStrAllFunctionExample,
              isBtnsScroll: true,
              error: "Required field cannot be empty",
              title: "Certificate Type",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              onBtnSelectChanged: (index) {
                statusAllFunctionExample![index] =
                    !statusAllFunctionExample![index];
                if (statusAllFunctionExample![index]) {
                  selectedStrAllFunctionExample += '${options[index]} ';
                } else if (selectedStrAllFunctionExample
                    .contains(options[index])) {
                  selectedStrAllFunctionExample = selectedStrAllFunctionExample
                      .replaceFirst('${options[index]} ', '');
                }
                Fluttertoast.showToast(
                  msg:
                      "Click to trigger onBtnSelectChanged callback.\n index:$index",
                );
                setState(() {});
              },
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
              onTap: () {
                Fluttertoast.showToast(msg: "Click to trigger callback_onTap");
              },
            ),
          ],
        ));
  }
}
