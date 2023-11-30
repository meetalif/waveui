import 'dart:async';
import 'package:waveui/waveui.dart';

///@desc    强引导example
class ForceGuideExample extends StatefulWidget {
  ForceGuideExample({Key? key}) : super(key: key);

  @override
  _ForceGuideExampleState createState() => _ForceGuideExampleState();
}

class _ForceGuideExampleState extends State<ForceGuideExample> {
  late WaveGuide intro;

  _ForceGuideExampleState() {
    ///init Guide
    intro = WaveGuide(
      stepCount: 7,
      introMode: GuideMode.force,

      ///use defaultTheme, or you can implement widgetBuilder function yourself
      widgetBuilder: StepWidgetBuilder.useDefaultTheme(
        showClose: false,
        tipInfo: [
          WaveTipInfoBean(
              "Title Bar",
              "Here is the title bar, showing the name of the current page",
              ""),
          WaveTipInfoBean(
              "Label component",
              "Here is the label component, you can dynamically add or delete components, when you click, the result will be returned to you",
              ""),
          WaveTipInfoBean("The button on the left",
              "Here is the button, click it to try", ''),
          WaveTipInfoBean("The button on the right",
              "Here is the button, click it to try", ''),
          WaveTipInfoBean(
              "The text on the left", "This is an unpretentious text", ''),
          WaveTipInfoBean("right text", "this is a boring text", ""),
          WaveTipInfoBean("Start button", "Click to start boot animation", ''),
        ],
      ),
    );
  }

  List<String> nameList = [
    'This is a long long long long long long long long long long long long tag',
    'Label what?',
    'Label no no no no no no no no no',
    'Label what?',
    'Tag mememememe'
  ];

  @override
  void initState() {
    super.initState();
    Timer(Duration(microseconds: 0), () {
      ///start the intro
      intro.start(context);
    });
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: WaveAppBar(
          title: Text(
            '强引导组件example',
            key: intro.keys[0],
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'WaveSelectTagWidget',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Adaptive label for fluid layout (minimum width 75)',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                WaveSelectTag(
                    key: intro.keys[1],
                    tags: nameList,
                    tagWidth: (MediaQuery.of(context).size.width - 40 - 24) / 3,
                    fixWidthMode: false,
                    onSelect: (index) {
                      Fluttertoast.showToast(
                          msg: "$index is selected", context);
                    }),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      key: intro.keys[2],
                      onPressed: () {},
                      child: Text("需求1"),
                    ),
                    ElevatedButton(
                      key: intro.keys[3],
                      onPressed: () {},
                      child: Text("需求2"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 14,
                      padding: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Text(
                        '左边的文字',
                        key: intro.keys[4],
                      ),
                    ),
                    Container(
                      width: 14,
                      padding: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Text(
                        'right side character',
                        key: intro.keys[5],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          key: intro.keys[6],

          ///1st guide
          child: Icon(
            Icons.play_arrow,
          ),
          onPressed: () {
            intro.start(context);
          },
        ),
      ),
      onWillPop: () async {
        //destroy guide page when tap back key
        intro.dispose();
        return true;
      },
    );
  }
}
