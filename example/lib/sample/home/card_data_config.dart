import 'package:example/sample/components/drawer/drawer_example_page.dart';
import 'package:example/sample/components/loading/page_loading_widget.dart';
import 'package:example/sample/components/snackbar/snackbar_example.dart';
import 'package:example/sample/components/text/typography_page.dart';
import 'package:waveui/waveui.dart';
import 'package:example/sample/components/actionsheet/actionsheet_entry_page.dart';
import 'package:example/sample/components/appraise/appraise_example.dart';
import 'package:example/sample/components/bottom_tabbar/bottom_tabbar_example.dart';
import 'package:example/sample/components/calendar/calendarview_example.dart';
import 'package:example/sample/components/card/wave_shadow_example.dart';
import 'package:example/sample/components/card/bubble/bubble_entry_page.dart';
import 'package:example/sample/components/card/content/text_content_entry_page.dart';
import 'package:example/sample/components/card_title/title_example.dart';
import 'package:example/sample/components/dialog/dialog_entry_page.dart';
import 'package:example/sample/components/empty/abnormal_entry_page.dart';
import 'package:example/sample/components/form/all_item_style_example.dart';
import 'package:example/sample/components/gallery/gallery_example.dart';
import 'package:example/sample/components/guide/guide_entry_page.dart';
import 'package:example/sample/components/input/input_example.dart';
import 'package:example/sample/components/line/dashed_line_example.dart';
import 'package:example/sample/components/navbar/appbar_entry_page.dart';
import 'package:example/sample/components/noticebar/wave_notice_bar_example.dart';
import 'package:example/sample/components/picker/picker_entry_page.dart';
import 'package:example/sample/components/popup/popwindow_example.dart';
import 'package:example/sample/components/rating/rating_example.dart';
import 'package:example/sample/components/scroll_anchor/scroll_actor_tab_example.dart';
import 'package:example/sample/components/selection/selection_entry_page.dart';
import 'package:example/sample/components/step/step_example.dart';
import 'package:example/sample/components/sugsearch/search_text_example.dart';
import 'package:example/sample/components/switch/wave_switch_example.dart';
import 'package:example/sample/components/switch/checkbox_example.dart';
import 'package:example/sample/components/switch/radio_example.dart';
import 'package:example/sample/components/tabbar/wave_tab_example.dart';
import 'package:example/sample/components/tag/tag_example.dart';

///Card information
class GroupInfo {
  ///Unique ID
  int? groupId;

  ///Group name
  String groupName;

  ///describe
  String desc;

  ///Whether to expand
  bool isExpand;

  ///Child Widget
  List<GroupInfo>? children;

  ///Jump to the next page
  Widget? navigatorPage;

  GroupInfo(
      {this.groupId,
      this.groupName = "",
      this.desc = "",
      this.isExpand = false,
      this.navigatorPage,
      this.children});
}

///Data configuration class
class CardDataConfig {
  ///全部
  static List<GroupInfo> getAllGroup() {
    List<GroupInfo> list = [];
    list.add(_getDataInputGroup());
    list.add(_getOperateGroup());
    list.add(_getNavigatorGroup());
    list.add(_getButtonGroup());
    list.add(_getContentGroup());
    return list;
  }

  ///Data Entry
  static GroupInfo _getDataInputGroup() {
    List<GroupInfo> children = [];
    children.add(GroupInfo(
        groupName: "Form item",
        desc: "Various form items",
        navigatorPage: AllFormItemStyleExamplePage("Form item type example")));
    children.add(GroupInfo(
        groupName: "Picker",
        desc: "Select popup",
        navigatorPage: PickerEntryPage("Picker example")));
    children.add(GroupInfo(
        groupName: "Appraise Evaluation",
        desc: "Emoji and star evaluation components",
        navigatorPage: AppraiseExample()));
    children.add(GroupInfo(
        groupName: "Input dynamic input box",
        desc: "Automatically input dynamic calculation height",
        navigatorPage: WaveInputTextExample()));
    return GroupInfo(
        groupName: "Data Entry", children: children, isExpand: false);
  }

  ///Operation feedback class
  static GroupInfo _getOperateGroup() {
    List<GroupInfo> children = [];
    children.add(GroupInfo(
        groupName: "Dialog Popup",
        desc: "Dialog display of various types",
        navigatorPage: DialogEntryPage("Dialog type example")));
    children.add(GroupInfo(
        groupName: "ActionSheet bottom menu",
        desc: "Bottom Action Popup",
        navigatorPage: ActionSheetEntryPage("ActionSheet example")));
    children.add(GroupInfo(
        groupName: "Tips",
        desc: "A prompt pops up at the specified position",
        navigatorPage: PopWindowExamplePage("Tips example")));
    children.add(GroupInfo(
        groupName: "Snackbar",
        desc: "Styled snackbar",
        navigatorPage: SnackbarExample()));

    children.add(GroupInfo(
        groupName: "Page Loading",
        desc: "Full screen page loading when navigating",
        navigatorPage: PageLoadingWidget()));
    return GroupInfo(
        groupName: "Operation Feedback", children: children, isExpand: false);
  }

  /// 导航类
  static GroupInfo _getNavigatorGroup() {
    List<GroupInfo> children = [];
    children.add(GroupInfo(
        groupName: "Navigation Bar",
        desc: "Appbar Navigation Bar",
        navigatorPage: AppbarEntryPage()));
    children.add(GroupInfo(
        groupName: "Drawer",
        desc: "Customized Drawer",
        navigatorPage: DrawerExamplePage()));
    children.add(GroupInfo(
        groupName: "Search Search",
        desc: "For search only",
        navigatorPage: SearchTextExample()));
    children.add(GroupInfo(
        groupName: "Tabs to switch",
        desc: "tab",
        navigatorPage: WaveTabExample()));
    children.add(GroupInfo(
        groupName: "BottomTabBar",
        desc: "Bottom Navigation",
        navigatorPage: BottomTabbarExample()));
    children.add(GroupInfo(
        groupName: "Selection filter",
        desc: "Filter Item + Filter Drawer",
        navigatorPage: SelectionEntryPage()));
    children.add(GroupInfo(
        groupName: "City Selection",
        desc: "city ​​selection",
        navigatorPage: _buildSingleSelectCityPage()));
    children.add(GroupInfo(
        groupName: "Anchor",
        desc: "Anchor Tab sliding instance",
        navigatorPage: ScrollActorTabExample()));
    children.add(GroupInfo(
        groupName: "Guide",
        desc: "Strong Guide & Weak Guide",
        navigatorPage: GuideEntryPage()));
    return GroupInfo(groupName: "Navigation", children: children);
  }

  ///button
  static GroupInfo _getButtonGroup() {
    List<GroupInfo> children = [];
    children.add(GroupInfo(
        groupName: "Radio",
        desc: "single button",
        navigatorPage: RadioExample()));
    children.add(GroupInfo(
        groupName: "Checkbox multiple choice button",
        desc: "Multiple Choice Button",
        navigatorPage: CheckboxExample()));
    children.add(GroupInfo(
        groupName: "SwitchButton normal button",
        desc: "Switch button",
        navigatorPage: WaveSwitchExample()));
    return GroupInfo(groupName: "Button", children: children, isExpand: false);
  }

  ///content
  static GroupInfo _getContentGroup() {
    List<GroupInfo> children = [];
    children.add(GroupInfo(
        groupName: "Tag label",
        desc: "Various styles of labels",
        navigatorPage: TagExample()));
    children.add(GroupInfo(
        groupName: "RatingBar",
        desc: "star rating bar",
        navigatorPage: RatingExample()));
    children.add(GroupInfo(
        groupName: "DashedLine",
        desc: "Custom dashed line",
        navigatorPage: DashedLineExample()));
    children.add(GroupInfo(
        groupName: "ShadowCard",
        desc: "WaveShadowCard",
        navigatorPage: WaveShadowExample()));
    children.add(GroupInfo(
        groupName: "Title Title",
        desc: "Examples of various titles",
        navigatorPage: TitleExample()));
    children.add(GroupInfo(
        groupName: "AbnormalCard",
        desc: "Multiple abnormal page display",
        navigatorPage: AbnormalStatesEntryPage("Example of abnormal page")));
    children.add(GroupInfo(
        groupName: "Bubble",
        desc: "Normal Bubbles & Expandable Bubbles",
        navigatorPage: BubbleEntryPage()));
    children.add(GroupInfo(
        groupName: "StepBar",
        desc: "horizontal & vertical step bar",
        navigatorPage: StepExample()));
    children.add(GroupInfo(
        groupName: "Notification",
        desc: "Various notification styles, support setting icons and colors",
        navigatorPage: WaveNoticeBarExample()));
    children.add(GroupInfo(
        groupName: "Text",
        desc: "Multi-style text content",
        navigatorPage: TextContentEntryPage()));
    children.add(GroupInfo(
        groupName: "Typography",
        desc: "Multi-style text styles",
        navigatorPage: TypographyPage()));
    children.add(GroupInfo(
        groupName: "Calendar",
        desc: "Calendar Component",
        navigatorPage: CalendarViewExample("Calendar Component")));
    children.add(GroupInfo(
        groupName: "Gallery Pictures",
        desc: "Picture Selection & Picture View",
        navigatorPage: GalleryExample()));
    return GroupInfo(groupName: "Content", children: children);
  }

  ///city selection
  static Widget _buildSingleSelectCityPage() {
    List<WaveSelectCityModel> hotCityList = [];
    hotCityList.addAll([
      WaveSelectCityModel(name: "Beijing"),
      WaveSelectCityModel(name: "Guangzhou City"),
      WaveSelectCityModel(name: "Chengdu"),
      WaveSelectCityModel(name: "Shenzhen"),
      WaveSelectCityModel(name: "Hangzhou City"),
      WaveSelectCityModel(name: "Wuhan City"),
    ]);
    return WaveSingleSelectCityPage(
      appBarTitle: 'City Radio',
      hotCityTitle: 'Here is the recommended city',
      hotCityList: hotCityList,
    );
  }
}
