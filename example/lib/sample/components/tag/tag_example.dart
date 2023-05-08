import 'package:waveui/waveui.dart';
import 'package:example/sample/components/tag/border_tag_example.dart';
import 'package:example/sample/components/tag/custom_tag_example.dart';
import 'package:example/sample/components/tag/delete_tag_example.dart';
import 'package:example/sample/components/tag/select_tag_example.dart';
import 'package:example/sample/components/tag/state_tag_example.dart';
import 'package:example/sample/components/tag/tag_row_example.dart';
import 'package:example/sample/home/list_item.dart';

class TagExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(
        title: "Label Example",
      ),
      body: ListView(
        children: [
          ListItem(
            title: "Select Label",
            isShowLine: false,
            describe: 'Single-select, multi-select tags',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return SelectTagExamplePage();
                },
              ));
            },
          ),
          ListItem(
            title: "Delete Label",
            describe: 'Deletable label',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return DeleteTagExamplePage();
                },
              ));
            },
          ),
          ListItem(
            title: "Custom Label",
            describe: 'key width up to 92, value is left-aligned',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return CustomTagExample();
                },
              ));
            },
          ),
          ListItem(
            title: "Status Label",
            describe: 'Default yellow, support setting other colors',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return StateTagExample();
                },
              ));
            },
          ),
          ListItem(
            title: "Border Color",
            describe: 'Default theme color, support setting other colors',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return BorderTagExample();
                },
              ));
            },
          ),
          ListItem(
            title: "Label Group",
            describe: 'Multiple labels combined together label',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return RowTagExample();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
