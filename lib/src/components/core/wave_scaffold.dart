import 'package:waveui/waveui.dart';

class WaveScaffold extends StatelessWidget {
  const WaveScaffold({
    super.key,
    this.appBar,
    this.isBlurred = false,
    this.body,
    this.bottomNavigationBar,
    this.drawer,
    this.floatingActionButton,
    this.backgroundColor,
    this.isLoading = false,
    this.resizeToAvoidBottomInset = true,
  });

  final PreferredSizeWidget? appBar;

  /// Must have to use `WaveAppbar` and set the value `isBlurred` to `true`
  final bool isBlurred;

  final bool isLoading;

  final Widget? body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Drawer? drawer;
  final Color? backgroundColor;
  final bool resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          key: key,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          appBar: appBar,
          extendBody: isBlurred,
          extendBodyBehindAppBar: isBlurred,
          backgroundColor: backgroundColor ?? Get.theme.colorScheme.background,
          body: body,
          bottomNavigationBar: bottomNavigationBar,
          drawer: drawer,
          floatingActionButton: floatingActionButton,
        ),
        if (isLoading) const WavePageLoading(),
      ],
    );
  }
}
