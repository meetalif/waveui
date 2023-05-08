import 'package:waveui/waveui.dart';

class SnackbarExample extends StatelessWidget {
  const SnackbarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(title: 'Snackbar Example'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                WaveSnackbar.show(title: "This is a title");
              },
              child: Text("Getx Toast"),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 50,
              itemBuilder: (context, index) {
                return Text(
                    "This is a sample text. This is a sample text. This is a sample text.");
              },
            ),
          ],
        ),
      ),
    );
  }
}
