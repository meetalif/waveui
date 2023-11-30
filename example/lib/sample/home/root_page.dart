import 'package:example/sample/home/card_data_config.dart';
import 'package:waveui/waveui.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<GroupInfo> list = CardDataConfig.getAllGroup();

    return WaveScaffold(
      isBlurred: true,
      backgroundColor: Get.theme.cardColor,
      appBar: WaveAppBar(
        isBlurred: true,
        title: 'WaveUI',
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(FluentIcons.navigation_24_regular),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.changeTheme(WaveTheme(darkMode: true));
            },
            icon: const Icon(FluentIcons.dark_theme_24_regular),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var group = list[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  color: Get.theme.colorScheme.background,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    group.groupName,
                    style: Get.textTheme.titleMedium,
                  ),
                ),
                ListView.builder(
                  itemCount: group.children?.length ?? 0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var widget = group.children![index];
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Get.to(widget.navigatorPage);
                          },
                          title: Text(widget.groupName),
                          subtitle: Text(widget.desc),
                        ),
                        const Divider(),
                      ],
                    );
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
