import 'package:get/get.dart';
import 'package:example/sample/home/list_item.dart';
import 'package:example/sample/home/card_data_config.dart';
import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final GroupInfo? groupInfo;

  GroupCard({
    Key? key,
    this.groupInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    groupInfo?.children?.forEach((element) {
      list.add(
        ListItem(
          title: element.groupName,
          describe: element.desc,
          onPressed: () {
            Get.to(element.navigatorPage);
          },
        ),
      );
    });
    return ExpansionTile(
      title: Text("${groupInfo?.groupName}"),
      children: list,
    );
  }

  Widget _getContentWidget() {
    if (groupInfo == null || groupInfo!.children == null) {
      return const SizedBox.shrink();
    }
    return ListView.builder(
      physics: new NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: groupInfo?.children?.length,
      itemBuilder: (BuildContext context, int index) {
        return ListItem(
          isShowLine: !(index == 0),
          title: groupInfo?.children![index].groupName ?? '',
          describe: groupInfo?.children![index].desc ?? '',
          onPressed: () {
            Get.to(groupInfo?.children![index].navigatorPage);
          },
        );
      },
    );
  }
}
