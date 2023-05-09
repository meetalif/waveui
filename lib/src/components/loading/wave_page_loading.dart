import 'package:waveui/waveui.dart';

class WavePageLoading extends StatelessWidget {
  final Color? backgroundColor;
  const WavePageLoading({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return WaveContainer.expand(
      color: backgroundColor,
      child: const Center(
        child: SizedBox(
          height: 40,
          width: 40,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
