import 'package:waveui/waveui.dart';
import 'package:example/sample/home/list_item.dart';

import 'wave_tabbar_sticky_example.dart';

class WaveTabExample extends StatefulWidget {
  @override
  _WaveTabExampleState createState() => _WaveTabExampleState();
}

class _WaveTabExampleState extends State<WaveTabExample>
    with TickerProviderStateMixin {
  WaveCloseWindowController? closeWindowController;

  @override
  void initState() {
    super.initState();
    closeWindowController = WaveCloseWindowController();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: WaveAppBar(
            title: 'Wave tab example',
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListItem(
                  title: "Wave tab bar badge implementation",
                  isShowLine: false,
                ),
                Divider(),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(new MaterialPageRoute(builder: (context) {
                        return WaveTabbarStickyExample();
                      }));
                    },
                    child:
                        Text("Tabbar click to automatically collapse example"),
                  ),
                ),
                Divider(),
                _createExpandedMoreTabbarWidgets(),
                Divider(),
                _createStableTabbar4Widgets(),
                Divider(),
                _createStableTabbarWidgets(),
                Divider(),
                _createTabbarBadgeWidgets(),
                Divider(),
                _createStableTabbarBadgeWidgets(),
                Divider(),
                _createDividerTabbarWidgets(),
                Divider(),
                _createCustomTabbarWidgets(),
                Divider(),
                _createTopTabbarWidgets(),
                Divider(),
                _createTopTabbarCountWidgets(),
                Divider(),
                _createOriginWidgets(),
              ],
            ),
          ),
        ),
        onWillPop: () {
          if (closeWindowController!.isShow) {
            closeWindowController!.closeMoreWindow();
            return Future.value(false);
          }
          return Future.value(true);
        });
  }

  _createExpandedMoreTabbarWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Business 1"));
    tabs.add(BadgeTab(text: "Business 2"));
    tabs.add(BadgeTab(text: "Business 3"));
    tabs.add(BadgeTab(text: "Business 4"));
    tabs.add(BadgeTab(text: "Business five"));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      showMore: true,
      moreWindowText: "Tabs description",
      closeController: closeWindowController,
      onTap: (state, index) {
        state.refreshBadgeState(index);
      },
    );
  }

  _createStableTabbar4Widgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Business 1"));
    tabs.add(BadgeTab(text: "Business 2"));
    tabs.add(BadgeTab(text: "Business 3"));
    tabs.add(BadgeTab(text: "Business 4"));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      onTap: (state, index) {
        state.refreshBadgeState(index);
      },
    );
  }

  _createStableTabbarWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Special business details 1", badgeText: "New"));
    tabs.add(BadgeTab(text: "Business 2", badgeNum: 22));
    tabs.add(BadgeTab(text: "Business 3", badgeNum: 11));
    tabs.add(BadgeTab(text: "Business 4", showRedBadge: true));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      mode: WaveTabBarBadgeMode.origin,
      isScroll: false,
      labelPadding: EdgeInsets.only(left: 20, right: 12),
      indicatorPadding: EdgeInsets.only(left: 10),
      onTap: (state, index) {
        Fluttertoast.showToast(msg: "点击了", context);
      },
    );
  }

  _createTabbarBadgeWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Business 1", badgeText: "New"));
    tabs.add(BadgeTab(text: "Business 2", badgeNum: 22));
    tabs.add(BadgeTab(text: "Business 3", badgeNum: 11));
    tabs.add(BadgeTab(text: "Business 4", showRedBadge: true));
    tabs.add(BadgeTab(text: "Business 5", badgeNum: 12));
    tabs.add(BadgeTab(text: "Business 6", badgeNum: 30));
    tabs.add(BadgeTab(text: "Business Seven"));
    tabs.add(BadgeTab(text: "Business Eight", badgeNum: 23));
    tabs.add(BadgeTab(text: "Business 9", badgeNum: 43));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      onTap: (state, index) {
        state.refreshBadgeState(index);
      },
    );
  }

  _createStableTabbarBadgeWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Business 1", badgeNum: 100));
    tabs.add(BadgeTab(text: "Business 2", badgeNum: 22));
    tabs.add(BadgeTab(text: "Business 3", badgeNum: 11));
    tabs.add(BadgeTab(text: "Business 4"));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      onTap: (state, index) {
        state.refreshBadgeState(index);
      },
    );
  }

  _createDividerTabbarWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Business One", topText: "1"));
    tabs.add(BadgeTab(text: "Business 2", topText: "2"));
    tabs.add(BadgeTab(text: "Business 3", topText: "3"));
    tabs.add(BadgeTab(text: "Business 4", topText: "4"));
    tabs.add(BadgeTab(text: "Business 5", topText: "5"));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      hasIndex: true,
      hasDivider: true,
      onTap: (state, index) {},
    );
  }

  ///
  ///Custom tab width, if the sum of the tab width is greater than the screen width, the default can scroll left and right
  ///
  _createCustomTabbarWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Business One", badgeNum: 2));
    tabs.add(BadgeTab(text: "Business 2"));
    tabs.add(BadgeTab(text: "Business 3", badgeNum: 33));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      tabWidth: 80,
      hasIndex: true,
      hasDivider: false,
      onTap: (state, index) {},
    );
  }

  _createTopTabbarWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "August 09", topText: "Today"));
    tabs.add(BadgeTab(text: "August 10", topText: "Tomorrow"));
    tabs.add(BadgeTab(text: "August 11", topText: "Wednesday"));
    tabs.add(BadgeTab(text: "August 12", topText: "Thursday"));
    tabs.add(BadgeTab(text: "August 13", topText: "Friday"));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      hasIndex: true,
      labelColor: Color(0xFF21C1B5),
      indicatorColor: Color(0xFF21C1B5),
      hasDivider: true,
      onTap: (state, index) {},
    );
  }

  _createTopTabbarCountWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "August 09", topText: "Today"));
    tabs.add(BadgeTab(text: "August 10", topText: "Tomorrow"));
    tabs.add(BadgeTab(text: "August 11", topText: "Wednesday"));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      hasIndex: true,
      labelColor: Color(0xFF21C1B5),
      indicatorColor: Color(0xFF21C1B5),
      hasDivider: true,
      onTap: (state, index) {},
    );
  }

  _createOriginWidgets() {
    var tabs = <BadgeTab>[];
    tabs.add(BadgeTab(text: "Business 1", badgeText: "New"));
    tabs.add(BadgeTab(text: "Business 2", badgeNum: 22));
    tabs.add(BadgeTab(text: "Business 3", badgeNum: 11));
    tabs.add(BadgeTab(text: "Business 4", showRedBadge: true));
    tabs.add(BadgeTab(text: "Business 5", badgeNum: 12));
    tabs.add(BadgeTab(text: "Business 6", badgeNum: 30));
    tabs.add(BadgeTab(text: "Business Seven"));
    tabs.add(BadgeTab(text: "Business Eight", badgeNum: 23));
    tabs.add(BadgeTab(text: "Business Nine"));
    TabController tabController =
        TabController(length: tabs.length, vsync: this);
    return WaveTabBar(
      controller: tabController,
      tabs: tabs,
      mode: WaveTabBarBadgeMode.origin,
      isScroll: false,
      labelPadding: EdgeInsets.only(left: 20, right: 12),
      indicatorPadding: EdgeInsets.only(left: 10),
      onTap: (state, index) {},
    );
  }
}
