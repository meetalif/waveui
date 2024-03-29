import 'package:waveui/waveui.dart';

///Example of the second searchba, the scene is applied below the page title
class SearchTextExample extends StatefulWidget {
  @override
  _SearchTextExampleState createState() => _SearchTextExampleState();
}

class _SearchTextExampleState extends State<SearchTextExample> {
  FocusNode focusNode = FocusNode();
  WaveSearchTextController scontroller = WaveSearchTextController();

  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    textController.addListener(() {
      if (focusNode.hasFocus) {
        if (!WaveUITools.isEmpty(textController.text)) {
          scontroller.isClearShow = true;
          scontroller.isActionShow = true;
        }
      }
    });
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        if (!WaveUITools.isEmpty(textController.text)) {
          scontroller.isClearShow = true;
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(
        title: 'Example search input box',
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 40,
              ),
              WaveSearchText(
                focusNode: focusNode,
                controller: textController,
                searchController: scontroller..isActionShow = true,
                onTextClear: () {
                  debugPrint('sss');
                  return false;
                },
                autoFocus: true,
                onActionTap: () {
                  scontroller.isClearShow = false;
                  scontroller.isActionShow = false;
                  focusNode.unfocus();
                  Fluttertoast.showToast(
                    msg: 'Cancel',
                  );
                },
                onTextCommit: (text) {
                  Fluttertoast.showToast(
                    msg: 'submit content: $text',
                  );
                },
                onTextChange: (text) {
                  Fluttertoast.showToast(
                    msg: 'Input content: $text',
                  );
                },
              ),
              Container(
                height: 20,
              ),
              Container(
                width: 200,
                child: WaveSearchText(
                  innerPadding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  maxHeight: 60,
                  innerColor: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  normalBorder: Border.all(
                      color: Color(0xFFF0F0F0),
                      width: 1,
                      style: BorderStyle.solid),
                  activeBorder: Border.all(
                      color: Color(0xFF0984F9),
                      width: 1,
                      style: BorderStyle.solid),
                  onTextClear: () {
                    debugPrint('sss');
                    focusNode.unfocus();
                    return false;
                  },
                  autoFocus: true,
                  action: Container(),
                  onActionTap: () {
                    Fluttertoast.showToast(
                      msg: 'Cancel',
                    );
                  },
                  onTextCommit: (text) {
                    Fluttertoast.showToast(
                      msg: 'submit content: $text',
                    );
                  },
                  onTextChange: (text) {
                    Fluttertoast.showToast(
                      msg: 'Input content: $text',
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
