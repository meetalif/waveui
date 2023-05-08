import 'dart:async';

import 'package:waveui/waveui.dart';

class PageLoadingWidget extends StatefulWidget {
  const PageLoadingWidget({Key? key}) : super(key: key);

  @override
  State<PageLoadingWidget> createState() => _PageLoadingWidgetState();
}

class _PageLoadingWidgetState extends State<PageLoadingWidget> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return WaveScaffold(
      isLoading: isLoading,
      isBlurred: false,
      appBar: WaveAppBar(
        title: "Page Loading",
        isBlurred: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            WaveNormalButton(
              text: "Load",
              onTap: () {
                setState(() {
                  isLoading = true;
                });
                Timer(Duration(seconds: 2), () {
                  setState(() {
                    isLoading = false;
                  });
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            Text(
                "Loading animation or loading spiner or loader. It's used to show loading animation when the app is in loading state or something is processing for uncertain time."),
            Text(
                "Loading animation or loading spiner or loader. It's used to show loading animation when the app is in loading state or something is processing for uncertain time."),
            Text(
                "Loading animation or loading spiner or loader. It's used to show loading animation when the app is in loading state or something is processing for uncertain time."),
            Text(
                "Loading animation or loading spiner or loader. It's used to show loading animation when the app is in loading state or something is processing for uncertain time."),
            Text(
                "Loading animation or loading spiner or loader. It's used to show loading animation when the app is in loading state or something is processing for uncertain time."),
          ],
        ),
      ),
    );
  }
}
