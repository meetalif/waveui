import 'dart:ui';

import 'package:waveui/waveui.dart';

class WaveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final dynamic title;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final bool showDivider;
  final List<Widget>? actions;
  final bool isBlurred;
  final bool isCenteredTitle;
  final Function()? onBackPressed;

  const WaveAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.isBlurred = false,
    this.automaticallyImplyLeading = true,
    this.showDivider = true,
    this.isCenteredTitle = true,
    this.onBackPressed,
  });
  @override
  Size get preferredSize => const Size.fromHeight(61);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title is String || title is int ? Text('$title') : title,
      actions: actions,
      automaticallyImplyLeading: false,
      centerTitle: isCenteredTitle,
      bottom: showDivider ? _bottom() : null,
      scrolledUnderElevation: 0,
      backgroundColor: Get.theme.appBarTheme.backgroundColor!.withOpacity(0.8),
      flexibleSpace: isBlurred
          ? ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: WaveConstants.blur,
                  sigmaY: WaveConstants.blur,
                ),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            )
          : null,
      leading: leading ??
          (automaticallyImplyLeading
              ? _backButton(context, onBackPressed: onBackPressed)
              : null),
    );
  }

  IconButton _backButton(BuildContext context, {Function()? onBackPressed}) {
    return IconButton(
      onPressed: onBackPressed ??
          () {
            Navigator.pop(context);
          },
      icon: const Icon(FluentIcons.chevron_left_28_regular),
    );
  }

  PreferredSizeWidget _bottom() {
    return const PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Divider(),
    );
  }
}
