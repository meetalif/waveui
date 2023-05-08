import 'package:waveui/waveui.dart';

class SelectedListActionSheetCustomExamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      SelectedListActionSheetCustomExamplePageState();
}

class SelectedListActionSheetCustomExamplePageState
    extends State<SelectedListActionSheetCustomExamplePage> {
  late WaveSelectedListActionSheetController controller;

  var _bottomActionKey = GlobalKey();
  List<String>? _data;
  @override
  void initState() {
    _data = [
      'data source 1',
      'data source 2',
      'data source 3',
      'data source 4'
    ];

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              WaveBottomButtonPanel(
                  key: _bottomActionKey,
                  mainButtonName: 'WaveBottomButtonPanel',
                  mainButtonOnTap: () {
                    WaveToast.show(
                        'OK! The data source length of sheet ${_data!.length}',
                        context);
                  },
                  iconButtonList: [
                    WaveVerticalIconButton(
                        name: 'Selected(${_data!.length})',
                        iconWidget: WaveUITools.getAssetImage(
                            'icons/grey_place_holder.png'),
                        onTap: () {
                          if (!controller.isHidden) {
                            controller.dismiss();
                          } else {
                            if (_data == null || _data!.length <= 0) {
                              WaveToast.show(
                                  'The data is empty, the pop-up window is not displayed',
                                  context);
                              return;
                            }
                            WaveSelectedListActionSheet<String>(
                                    context: context,
                                    isClearButtonHidden: false,
                                    isDeleteButtonHidden: true,
                                    items: _data!,
                                    bottomOffset: 82,
                                    maxHeight: 400,
                                    controller: controller,
                                    title: 'Custom row view example',
                                    itemTitleBuilder: (int index, String? entity) {
                                      return Material(
                                        child: WaveStepInputFormItem(
                                          title: 'WaveStepInputFormItemWidget',
                                          subTitle:
                                              "subtitle, you don't need to pass it. The minimum and maximum values ​​can be customized",
                                          minLimit: 0,
                                          maxLimit: 10,
                                          onChanged:
                                              (int oldValue, int newValue) {
                                            WaveToast.show(
                                                "onChanged callback $oldValue ----$newValue",
                                                context);
                                          },
                                        ),
                                      );
                                    },
                                    onClear: () {
                                      controller.dismiss();
                                      //Customize the clearing operation, you can not implement it, and the default clearing operation will be used.
                                      WaveDialogManager.showConfirmDialog(
                                          context,
                                          title:
                                              "Are you sure you want to clear the selected list?",
                                          cancel: 'Cancel',
                                          confirm: 'OK', onConfirm: () {
                                        setState(() {});
                                        _data!.clear();
                                      }, onCancel: () {});
                                    })
                                .showWithTargetKey(
                                    bottomWidgetKey: _bottomActionKey);
                          }
                        })
                  ]),
            ],
          )),
    );
  }
}
