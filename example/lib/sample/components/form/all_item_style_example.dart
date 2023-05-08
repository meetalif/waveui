import 'package:waveui/waveui.dart';
import 'package:example/sample/components/form/group_example/expansion_group_example.dart';
import 'package:example/sample/components/form/group_example/group_add_example.dart';
import 'package:example/sample/components/form/group_example/normal_group_example.dart';
import 'package:example/sample/components/form/items_example/base_title_example.dart';
import 'package:example/sample/components/form/items_example/multi_choice_example.dart';
import 'package:example/sample/components/form/items_example/multi_choice_protrait_example.dart';
import 'package:example/sample/components/form/items_example/radio_input_example.dart';
import 'package:example/sample/components/form/items_example/radio_protrait_example.dart';
import 'package:example/sample/components/form/items_example/range_input_example.dart';
import 'package:example/sample/components/form/items_example/ratio_input_example.dart';
import 'package:example/sample/components/form/items_example/select_all_title_example.dart';
import 'package:example/sample/components/form/items_example/star_example.dart';
import 'package:example/sample/components/form/items_example/step_input_example.dart';
import 'package:example/sample/components/form/items_example/switch_example.dart';
import 'package:example/sample/components/form/items_example/text_block_input_example.dart';
import 'package:example/sample/components/form/items_example/text_input_example.dart';
import 'package:example/sample/components/form/items_example/text_quick_select_input_example.dart';
import 'package:example/sample/components/form/items_example/text_select_example.dart';
import 'package:example/sample/components/form/items_example/title_example.dart';
import 'package:example/sample/components/form/items_example/title_select_example.dart';
import 'package:example/sample/components/form/items_example/general_item_example.dart';
import 'package:example/sample/home/list_item.dart';

// ignore: must_be_immutable
class AllFormItemStyleExamplePage extends StatelessWidget {
  final String _title;
  bool hideAppBar = false;

  AllFormItemStyleExamplePage(this._title);

  @override
  Widget build(BuildContext context) {
    if (this.hideAppBar) {
      return this.getBodyWidget(context);
    }
    return Scaffold(
        appBar: WaveAppBar(
          title: _title,
        ),
        body: this.getBodyWidget(context));
  }

  Widget getBodyWidget(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListItem(
          title: "Basic Type",
          titleFontSize: 22,
          titleColor: Colors.red,
        ),
        ListItem(
          title: "Basic title form item",
          describe: "Basic Type",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return BaseTitleExamplePage("title form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Basic general form item",
          describe: "Custom base form",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return GeneralFormExamplePage("custom base form");
              },
            ));
          },
        ),
        ListItem(
          title: "Select Type",
          titleFontSize: 22,
          titleColor: Colors.red,
        ),
        ListItem(
          title: "Text Selection Form Item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return TextSelectInputExamplePage("Text Selection Form Item");
              },
            ));
          },
        ),
        ListItem(
          title: "Quick selection input form item",
          describe: "Quickly select the entry type",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return TextQuickSelectInputExamplePage(
                    "Quick selection input form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Text input type: 5 types",
          titleFontSize: 22,
          titleColor: Colors.red,
        ),
        ListItem(
          title: "Text input form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return TextInputExamplePage("Text input form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Block text input form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return TextBlockInputExamplePage("Block text input form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Range input form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return RangeInputExamplePage("Range form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Scale input form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return RatioInputExamplePage("Ratio input form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Title select input form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return TitleSelectInputExamplePage("Title selection form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Single choice & multiple choice types: 4 types",
          titleFontSize: 22,
          titleColor: Colors.red,
        ),
        ListItem(
          title: "Horizontal radio selection form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return RadioInputExamplePage("horizontal radio input");
              },
            ));
          },
        ),
        ListItem(
          title: "Vertical radio selection form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return RadioPortraitInputExamplePage(
                    "Vertical radio form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Horizontal multi-choice form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return MultiChoiceInputExamplePage(
                    "Horizontal multi-choice form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Vertical multi-choice form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return MultiChoicePortraitInputExamplePage(
                    "Vertical multi-choice form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Other types: 6",
          titleFontSize: 22,
          titleColor: Colors.red,
        ),
        ListItem(
          title: "Title form item",
          describe: "Miscellaneous Type",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return TitleExamplePage("title form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Select All Items",
          describe: "Miscellaneous Type",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return SelectAllTitleExamplePage("Select all titles");
              },
            ));
          },
        ),
        ListItem(
          title: "Star rating form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return StarInputExamplePage("Star rating form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Increment form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return StepInputExamplePage(title: "Increment form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Switch form item",
          describe: 'various forms',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return SwitchInputExamplePage("Switch form item");
              },
            ));
          },
        ),
        ListItem(
          title: "Group type: 4 types",
          titleFontSize: 22,
          titleColor: Colors.red,
        ),
        ListItem(
          title: "Add group form item" "",
          describe: "Group Type",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return GroupAddExamplePage("Add group form item" "");
              },
            ));
          },
        ),
        ListItem(
          title: "Normal grouping form item" "",
          describe: "Group Type",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return NormalGroupExample("Normal grouping form item" "");
              },
            ));
          },
        ),
        ListItem(
          title: "Expandable and collapsible group form items" "",
          describe: "Group Type",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return ExpansionGroupExample(
                    "Expandable and collapsible group form items" "");
              },
            ));
          },
        )
      ],
    );
  }
}
