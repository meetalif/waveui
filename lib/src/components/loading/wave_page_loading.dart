import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:waveui/waveui.dart';

class WavePageLoading extends StatelessWidget {
  final Color? backgroundColor;
  const WavePageLoading({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return WaveContainer.expand(
      color: backgroundColor,
      child: Center(
        child: SizedBox(
          height: 50,
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: Get.theme.colorScheme.primary,
            size: 50,
          ),
        ),
      ),
    );
  }
}
