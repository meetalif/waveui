import 'package:waveui/waveui.dart';

class ToastExample extends StatefulWidget {
  @override
  _ToastExampleState createState() => _ToastExampleState();
}

class _ToastExampleState extends State<ToastExample>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(
        title: 'Wave toast example',
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  WaveToast.show(
                    "Normal long toast",
                    context,
                    duration: WaveDuration.long,
                    gravity: WaveToastGravity.center,
                  );
                },
                child: Text("Normal Long Toast"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  WaveToast.show(
                    "Failure Icon Toast",
                    context,
                    preIcon: Image.asset(
                      "assets/image/icon_toast_fail.png",
                      width: 24,
                      height: 24,
                    ),
                    duration: WaveDuration.short,
                  );
                },
                child: Text("Failure Icon Toast"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  WaveToast.show(
                    "Success Icon Toast",
                    context,
                    preIcon: Image.asset(
                      "assets/image/icon_toast_success.png",
                      width: 24,
                      height: 24,
                    ),
                    duration: WaveDuration.short,
                  );
                },
                child: Text("Success Icon Toast"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  WaveToast.show("Custom position Toast", context,
                      duration: WaveDuration.short,
                      verticalOffset: 100,
                      gravity: WaveToastGravity.bottom);
                },
                child: Text("Custom position Toast"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  WaveToast.show(
                    "Custom duration Toast",
                    context,
                    duration: Duration(seconds: 5),
                  );
                },
                child: Text("custom duration Toast(5s)"),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
