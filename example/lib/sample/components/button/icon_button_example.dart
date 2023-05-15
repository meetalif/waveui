import 'package:waveui/waveui.dart';

/// @desc    图片和文字随意组合

class WaveIconBtnExample extends StatefulWidget {
  @override
  _WaveIconBtnExampleState createState() => _WaveIconBtnExampleState();
}

class _WaveIconBtnExampleState extends State<WaveIconBtnExample>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(
        title: '图文组合示列',
      ),
      body: SingleChildScrollView(
        child: iconButton(),
      ),
    );
  }

  Widget iconButton() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50, bottom: 50),
          child: Center(
            child: WaveIconButton(
                name: '文字在下',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF999999),
                ),
                direction: IconDirection.bottom,
                padding: 4,
                iconHeight: 30,
                iconWidth: 30,
                iconWidget: Icon(Icons.arrow_upward),
                onTap: () {
                  WaveToast.show('按钮被点击', context);
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 50),
          child: Center(
            child: WaveIconButton(
                name: '文字在上',
                direction: IconDirection.top,
                padding: 4,
                iconWidget: Icon(Icons.assignment),
                onTap: () {
                  WaveToast.show('按钮被点击', context);
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 50),
          child: Center(
            child: WaveIconButton(
                name: '文字在右',
                direction: IconDirection.right,
                padding: 4,
                iconWidget: Icon(Icons.autorenew),
                onTap: () {
                  WaveToast.show('按钮被点击', context);
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 50),
          child: Center(
            child: WaveIconButton(
                name: '文字在左',
                direction: IconDirection.left,
                padding: 4,
                iconWidget: Icon(Icons.backspace),
                onTap: () {
                  WaveToast.show('按钮被点击', context);
                }),
          ),
        )
      ],
    );
  }
}
