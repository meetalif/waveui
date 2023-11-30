import 'package:waveui/waveui.dart';

/// 评价组件example

class AppraiseExample extends StatefulWidget {
  @override
  _AppraiseExampleState createState() => _AppraiseExampleState();
}

class _AppraiseExampleState extends State<AppraiseExample> {
  List<String> tags = [
    'I',
    'I am optional',
    'I am an optional label',
    'My copywriting is very long and occupies a single line',
    'I am optional label 1',
    'I am optional label 1',
    'I am optional label 1',
  ];

  @override
  Widget build(BuildContext context) {
    return WaveScaffold(
      appBar: WaveAppBar(
        title: 'Evaluation component',
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Text('Rule', style: Get.textTheme.headlineMedium),
          SizedBox(height: 8),
          WaveCard(
            backgroundColor: Color(0x260984F9),
            padding: EdgeInsets.all(12),
            child: Text(
              'Support the use of pages and pop-up windows, use WaveAppraise in the page, use WaveAppraiseBottomPicker in the pop-up window, the picker encapsulates the widget, and the parameters of the two are exactly the same',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Displayed inside the page',
            style: Get.textTheme.titleLarge,
          ),
          SizedBox(height: 8),
          Text(
            'Description: When displayed on the page, the submit button needs to be hidden. If it is called back, call the inputChangeCallback, iconClickCallback and tagSelectCallback in the config',
            style: Get.textTheme.bodySmall,
          ),
          SizedBox(height: 24),
          WaveAppraise(
            title: "Here is the title text",
            headerType: WaveAppraiseHeaderType.center,
            type: WaveAppraiseType.star,
            tags: tags,
            inputHintText: 'Here is the text input component',
            config: WaveAppraiseConfig(
                showConfirmButton: false,
                starAppraiseHint:
                    'The copywriting when the star is not selected',
                inputDefaultText: 'This is a default text',
                inputTextChangeCallback: (input) {
                  Fluttertoast.showToast(
                      msg: 'The input content is' + input, context);
                },
                iconClickCallback: (index) {
                  Fluttertoast.showToast(
                      msg: 'The selected evaluation is $index', context);
                },
                tagSelectCallback: (list) {
                  Fluttertoast.showToast(
                      msg: 'The selected label is:' + list.toString(), context);
                }),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Show pop-up window',
            style: TextStyle(
              color: Color(0xFF222222),
              fontSize: 28,
            ),
          ),
          Text(
            '--Description: default style',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FilledButton(
            child: Text('Click to display the default style popup'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return WaveAppraiseBottomPicker(
                      title: "Here is the title text",
                      tags: tags,
                      inputHintText: 'Here is the text input component',
                      onConfirm: (index, list, input) {
                        showToast(index, list, input, context);
                        Navigator.pop(context);
                      },
                      config: WaveAppraiseConfig(
                          showConfirmButton: true,
                          count: 5,
                          starAppraiseHint:
                              'The copywriting when the star is not selected',
                          inputTextChangeCallback: (input) {
                            Fluttertoast.showToast(
                                msg: 'The input content is' + input, context);
                          },
                          iconClickCallback: (index) {
                            Fluttertoast.showToast(
                                msg: 'The selected evaluation is $index',
                                context);
                          },
                          tagSelectCallback: (list) {
                            Fluttertoast.showToast(
                                msg: 'The selected label is:' + list.toString(),
                                context);
                          }),
                    );
                  });
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '--Description: Display 3 emoticon pop-up windows, tags pass empty to hide tags',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FilledButton(
            child: Text('Click to display the evaluation pop-up window'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return WaveAppraiseBottomPicker(
                      title:
                          "Title text here is title text here is title text here is title text here is title text here is title text here is title text here is title text here",
                      inputHintText: 'Here is the text input component',
                      onConfirm: (index, list, input) {
                        showToast(index, list, input, context);
                        Navigator.pop(context);
                      },

                      ///Must pass in 5 strings, if there is no position pass ''
                      type: WaveAppraiseType.emoji,
                      iconDescriptions: ['poor', '', 'ok', '', 'very good'],
                      config: WaveAppraiseConfig(
                          indexes: [0, 2, 4], titleMaxLines: 3),
                    );
                  });
            },
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '--Description: Display 4 stars, hide the input box',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FilledButton(
            child: Text('Click to display the evaluation pop-up window'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return WaveAppraiseBottomPicker(
                      title: "Here is the title text",
                      tags: tags,
                      onConfirm: (index, list, input) {
                        showToast(index, list, input, context);
                        Navigator.pop(context);
                      },
                      type: WaveAppraiseType.star,
                      iconDescriptions: ['poor', 'no', 'ok', 'good'],
                      config: WaveAppraiseConfig(
                          showTextInput: false,
                          count: 4,
                          starAppraiseHint: 'Please rate'),
                    );
                  });
            },
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  void showToast(int index, List<String> selectedTags, String input,
      BuildContext context) {
    String str = 'The selected evaluation is $index';
    if (selectedTags.isNotEmpty) {
      str = str + ', the selected tag is:' + selectedTags.toString();
    }
    if (input.isNotEmpty) {
      str = str + ', the input content is:' + input;
    }
    Fluttertoast.showToast(msg: str, context);
  }
}
