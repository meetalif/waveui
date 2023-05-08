import 'package:waveui/waveui.dart';
import 'package:flutter/services.dart';

class TitleSelectInputExamplePage extends StatefulWidget {
  final String _title;

  TitleSelectInputExamplePage(this._title);

  @override
  State<StatefulWidget> createState() {
    return TitleSelectInputState();
  }
}

class TitleSelectInputState extends State<TitleSelectInputExamplePage> {
  late List<String> _list;
  TextEditingController controller = TextEditingController()..text = '123456';

  @override
  void initState() {
    super.initState();
    _list = [];
    _list.add('Mobile phone number');
    _list.add('landline');
  }

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
            WaveTitleSelectInputFormItem(
              title: _list[0],
              hint: "Please enter",
              controller: controller,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              selectedIndex: -1,
              selectList: _list,
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
              onChanged: (newValue) {
                WaveToast.show(
                    "Click to trigger callback_${newValue}_onChanged", context);
              },
              onTitleSelected: (String title, int index) {
                if ('landline' == title && controller.text.length > 5) {
                  WaveToast.show(
                      'The input length does not meet the requirements',
                      context);
                  controller.text = '111***1111';
                }
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 5),
              child: Text(
                "Full Feature Style:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTitleSelectInputFormItem(
              controller: TextEditingController()..text = "124",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: false,
              error: "Required field cannot be empty",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              title: _list[0],
              hint: "Please enter",
              selectedIndex: -1,
              selectList: _list,
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
              onChanged: (newValue) {
                WaveToast.show(
                    "Click to trigger callback_${newValue}_onChanged", context);
              },
              onTitleSelected: (String title, int index) {
                WaveToast.show(
                    "Click to trigger callback_${title}_${index}_onChanged",
                    context);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 5),
              child: Text(
                "no error：",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTitleSelectInputFormItem(
              controller: TextEditingController()..text = "124",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: false,
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              title: _list[0],
              hint: "Please enter",
              selectedIndex: -1,
              selectList: _list,
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
              onChanged: (newValue) {
                WaveToast.show(
                    "Click to trigger callback_${newValue}_onChanged", context);
              },
              onTitleSelected: (String title, int index) {
                WaveToast.show(
                    "Click to trigger callback_${title}_${index}_onChanged",
                    context);
              },
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 5),
              child: Text(
                "Full Feature Style:",
                style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 22,
                ),
              ),
            ),
            WaveTitleSelectInputFormItem(
              controller: TextEditingController()
                ..text = "The + -sign can be clicked when it is not editable",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: false,
              isPrefixIconEnabled: false,
              error: "Required field cannot be empty",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              title: _list[0],
              hint: "Please enter",
              selectedIndex: -1,
              selectList: _list,
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
              onChanged: (newValue) {
                WaveToast.show(
                    "Click to trigger callback_${newValue}_onChanged", context);
              },
              onTitleSelected: (String title, int index) {
                WaveToast.show(
                    "Click to trigger callback_${title}_${index}_onChanged",
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
            WaveTitleSelectInputFormItem(
              controller: TextEditingController()
                ..text = "The + -sign can be clicked when it is not editable",
              prefixIconType: WavePrefixIconType.add,
              isRequire: true,
              isEdit: false,
              isPrefixIconEnabled: true,
              error: "Required field cannot be empty",
              subTitle: "Here is the subtitle",
              tipLabel: "Label",
              title: _list[0],
              hint: "Please enter",
              selectedIndex: -1,
              selectList: _list,
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
              onChanged: (newValue) {
                WaveToast.show(
                    "Click to trigger callback_${newValue}_onChanged", context);
              },
              onTitleSelected: (String title, int index) {
                WaveToast.show(
                    "Click to trigger callback_${title}_${index}_onChanged",
                    context);
              },
            ),
          ],
        ));
  }
}
