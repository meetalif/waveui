import 'package:waveui/waveui.dart';

class WavePageLoading extends StatelessWidget {
  const WavePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const WaveContainer.expand(
      child: Center(
        child: SizedBox(
          height: 50,
          width: 50,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
