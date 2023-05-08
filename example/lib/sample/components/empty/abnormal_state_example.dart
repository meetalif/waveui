import 'package:waveui/waveui.dart';

class AbnomalStateExample extends StatelessWidget {
  final int? caseIndex;

  AbnomalStateExample({this.caseIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaveAppBar(
          title: 'Exception page',
        ),
        body: _buildEmpty(caseIndex, context));
  }

  Widget? _buildEmpty(int? index, BuildContext context) {
    Widget? widget;
    switch (index) {
      case 0:
        widget = WaveAbnormalStateWidget(
          img: Image.asset(
            'assets/image/content_failed.png',
            scale: 3.0,
          ),
          isCenterVertical: true,
          title: "Failed to get data, please try again",
          operateTexts: <String>["Please click the page to try again"],
          operateAreaType: OperateAreaType.textButton,
          action: (index) {
            WaveToast.show("Failed to get data, please try again", context);
          },
        );
        break;
      case 1:
        widget = WaveAbnormalStateWidget(
          isCenterVertical: true,
          img: Image.asset(
            'assets/image/no_data.png',
            scale: 3.0,
          ),
          title: WaveIntl.of(context).localizedResource.noDataTip,
        );
        break;
      case 2:
        widget = WaveAbnormalStateWidget(
          img: Image.asset(
            'assets/image/network_error.png',
            scale: 3.0,
          ),
          title: 'Network data exception',
        );
        break;
      case 3:
        widget = WaveAbnormalStateWidget(
          img: Image.asset(
            'assets/image/no_data.png',
            scale: 3.0,
          ),
          content: 'Your store has no users',
        );
        break;
      case 4:
        widget = WaveAbnormalStateWidget(
          img: Image.asset(
            'assets/image/no_data.png',
            scale: 3.0,
          ),
          title:
              "This is the subtitle content This is the subtitle content This is the subtitle",
          content: 'Your store has no users',
          operateAreaType: OperateAreaType.singleButton,
          operateTexts: ["Switch account"],
          action: (_) {
            WaveToast.show("The $_ button was clicked", context);
          },
        );
        break;
      case 5:
        widget = WaveAbnormalStateWidget(
          img: Image.asset(
            'assets/image/no_data.png',
            scale: 3.0,
          ),
          title: "None",
          content: 'You have no information to maintain',
          operateAreaType: OperateAreaType.doubleButton,
          operateTexts: ['to add', 'to modify'],
          action: (_) {
            WaveToast.show("The $_ button was clicked", context);
          },
        );
        break;
      case 6:
        widget = WaveAbnormalStateWidget(
          content: 'Your store has no users',
        );
        break;
    }

    return widget;
  }
}
