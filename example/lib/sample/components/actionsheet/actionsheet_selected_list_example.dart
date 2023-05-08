import 'package:waveui/waveui.dart';

class SelectedListActionSheetExamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      SelectedListActionSheetExamplePageState();
}

class SelectedListActionSheetExamplePageState
    extends State<SelectedListActionSheetExamplePage> {
  late WaveSelectedListActionSheetController controller;
  List<String> _data = [
    "1. You can only specify the text to be displayed, and the delete icon behind is the component's own",
    '2. The delete icon can control all display or hide, but does not support independent control of a row',
    '3. The view of each row supports full customization',
    '4. If you want to refresh the list, please call the controller to call the reloadData() method',
    '5. In this example, click the delete icon in the last row to update the text of the current row'
  ];

  @override
  void initState() {
    controller = WaveSelectedListActionSheetController();
    super.initState();
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///To intercept Android's system return behavior, be sure to add the following WillPopScope logic yourself
    return WillPopScope(
      onWillPop: () async {
        if (!controller.isHidden) {
          controller.dismiss();
          return false;
        }
        return true;
      },
      child: WaveScaffold(
          appBar: WaveAppBar(
            title: 'Selected menu list',
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                WaveBottomButtonPanel(
                    mainButtonName: 'WaveBottomButtonPanel',
                    mainButtonOnTap: () {
                      WaveToast.show(
                          "Sure! Sheet's data source length ${_data.length}",
                          context);
                    },
                    iconButtonList: [
                      WaveVerticalIconButton(
                          name: 'Selected(${_data.length})',
                          iconWidget: WaveUITools.getAssetImage(
                              'icons/grey_place_holder.png'),
                          onTap: () {
                            if (!controller.isHidden) {
                              controller.dismiss();
                            } else {
                              if (_data.length <= 0) {
                                WaveToast.show(
                                    'The data is empty, the pop-up window is not displayed',
                                    context);
                                return;
                              }
                              WaveSelectedListActionSheet<String>(
                                  context: context,
                                  isClearButtonHidden: false,
                                  isDeleteButtonHidden: false,
                                  items: _data,
                                  bottomOffset: 82,
                                  controller: controller,
                                  title:
                                      'Selected title, the priority is not as high as titleWidget',
                                  titleWidget: Container(
                                    color: Colors.blueGrey,
                                    child: Center(
                                      child: Text(
                                        'Custom View',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  itemTitleBuilder:
                                      (int index, String? entity) {
                                    return entity;
                                  },
                                  onClear: () {
                                    controller.dismiss();
                                    //Customize the clearing operation, you can not implement it, and the default clearing operation will be used.
                                    WaveDialogManager.showConfirmDialog(context,
                                        title:
                                            "Are you sure you want to clear the selected list?",
                                        cancel: 'Cancel',
                                        confirm: 'OK', onConfirm: () {
                                      setState(() {});
                                      _data.clear();
                                    }, onCancel: () {});
                                  },
                                  onClearCanceled: () {
                                    WaveToast.show("Cancel!!!!", context);
                                  },
                                  onClearConfirmed: () {
                                    setState(() {});
                                    WaveToast.show("OK!!!!", context);
                                  },
                                  onListDismissed:
                                      (bool isClosedByClearButton) {
                                    WaveToast.show(
                                        "Disappeared!!!!$isClosedByClearButton",
                                        context);
                                  },
                                  onListShowed: () {
                                    WaveToast.show("It's shown~~", context);
                                  },
                                  onItemDelete: (int idx, String? entity) {
                                    _data[idx] = '$idx has changed';
                                    controller.reloadData();
                                    WaveToast.show(
                                        "$idx odd rows cannot be deleted",
                                        context);
                                    return true;
                                  }).show();
                            }
                          })
                    ]),
              ],
            ),
          )),
    );
  }
}
