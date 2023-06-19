import 'package:waveui/waveui.dart';
import 'package:example/sample/home/root_page.dart';

void main() {
  runApp(WaveApp());
}

class WaveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wave UI',
      theme: WaveTheme(themeColor: Colors.deepPurple),
      home: RootPage(),
    );
  }
}
