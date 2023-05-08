import 'package:waveui/waveui.dart';

class TextModel {
  String? text;
}

class WaveInputTextExample extends StatefulWidget {
  WaveInputTextExample();

  @override
  State<StatefulWidget> createState() {
    return _WaveInputTextExampleState();
  }
}

class _WaveInputTextExampleState extends State<WaveInputTextExample> {
  TextModel model = TextModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaveAppBar(
          title: 'input dynamic calculation high',
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            color: Colors.white,
            child: Column(children: [
              _inputText(),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ));
  }

  Widget _inputText() {
    return WaveInputText(
      minLines: 1,
      maxLength: 100,
      textString: model.text ?? '',
      textInputAction: TextInputAction.newline,
      maxHintLines: 20,
      hint:
          'input dynamic high input dynamic high input dynamic high input dynamic high input dynamic high',
      padding: EdgeInsets.fromLTRB(20, 10, 20, 14),
      onTextChange: (text) {
        print(text);
        model.text = text;
        setState(() {});
      },
      onSubmit: (text) {
        print(text);
      },
    );
  }
}
