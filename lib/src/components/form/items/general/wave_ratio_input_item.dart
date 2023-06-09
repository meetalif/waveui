import 'package:waveui/src/components/form/base/wave_form_item_type.dart';
import 'package:waveui/src/components/form/utils/wave_form_util.dart';
import 'package:waveui/src/l10n/wave_intl.dart';
import 'package:waveui/src/theme/wave_theme_configurator.dart';
import 'package:waveui/src/theme/configs/wave_form_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// 比例输入型录入项
///
/// 包括"标题"、"副标题"、"错误信息提示"、"必填项提示"、"添加/删除按钮"、"消息提示"、
/// "输入框"等元素
///
// ignore: must_be_immutable
class WaveRatioInputFormItem extends StatefulWidget {
  /// 录入项的唯一标识，主要用于录入类型页面框架中
  final String? label;

  /// 录入项类型，主要用于录入类型页面框架中
  String type = WaveInputItemType.textInputRatioType;

  /// 录入项标题
  final String title;

  /// 录入项子标题
  final String? subTitle;

  /// 录入项提示（问号图标&文案） 用户点击时触发onTip回调。
  /// 1. 若赋值为 空字符串（""）时仅展示"问号"图标，
  /// 2. 若赋值为非空字符串时 展示"问号图标&文案"，
  /// 3. 若不赋值或赋值为null时 不显示提示项
  /// 默认值为 3
  final String? tipLabel;

  /// 录入项前缀图标样式 "添加项" "删除项" 详见 PrefixIconType类
  final String prefixIconType;

  /// 录入项错误提示
  final String error;

  /// 录入项是否为必填项（展示*图标） 默认为 false 不必填
  final bool isRequire;

  /// 录入项 是否可编辑
  final bool isEdit;

  /// 录入项不可编辑时(isEdit: false) "+"、"-"号是否可点击
  /// true: 可点击回调 false: 不可点击回调
  /// 默认值: false
  final bool isPrefixIconEnabled;

  /// 点击"+"图标回调
  final VoidCallback? onAddTap;

  /// 点击"-"图标回调
  final VoidCallback? onRemoveTap;

  /// 点击"？"图标回调
  final VoidCallback? onTip;

  ///内容
  final String? hint;

  /// 输入内容类型
  final String? inputType;
  final TextEditingController? controller;
  List<TextInputFormatter>? inputFormatters;

  /// 输入回调
  final ValueChanged<String>? onChanged;

  /// 背景色
  final Color? backgroundColor;

  /// form配置
  WaveFormItemConfig? themeData;

  WaveRatioInputFormItem(
      {Key? key,
      this.label,
      this.title = "",
      this.subTitle,
      this.tipLabel,
      this.prefixIconType = WavePrefixIconType.normal,
      this.error = "",
      this.isEdit = true,
      this.isRequire = false,
      this.isPrefixIconEnabled = false,
      this.onAddTap,
      this.onRemoveTap,
      this.onTip,
      this.hint,
      this.inputType,
      this.controller,
      this.inputFormatters,
      this.onChanged,
      this.backgroundColor,
      this.themeData})
      : super(key: key) {
    themeData ??= WaveFormItemConfig();
    themeData = WaveThemeConfigurator.instance
        .getConfig(configId: themeData!.configId)
        .formItemConfig
        .merge(themeData);
    themeData = themeData!
        .merge(WaveFormItemConfig(backgroundColor: backgroundColor));
  }

  @override
  WaveRatioInputFormItemState createState() {
    return WaveRatioInputFormItemState();
  }
}

class WaveRatioInputFormItemState extends State<WaveRatioInputFormItem> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.themeData!.backgroundColor,
      padding: WaveFormUtil.itemEdgeInsets(widget.themeData!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: WaveFormUtil.titleEdgeInsets(widget.prefixIconType,
                      widget.isRequire, widget.themeData!),
                  child: Row(
                    children: <Widget>[
                      WaveFormUtil.buildPrefixIcon(
                          widget.prefixIconType,
                          widget.isEdit,
                          context,
                          widget.onAddTap,
                          widget.onRemoveTap),
                      WaveFormUtil.buildRequireWidget(widget.isRequire),
                      WaveFormUtil.buildTitleWidget(
                          widget.title, widget.themeData!),
                      WaveFormUtil.buildTipLabelWidget(
                          widget.tipLabel, widget.onTip, widget.themeData!),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "1 : ",
                          style:
                              WaveFormUtil.getTitleTextStyle(widget.themeData!),
                        )),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType:
                            WaveFormUtil.getInputType(widget.inputType),
                        enabled: widget.isEdit,
                        maxLines: 1,
                        style: WaveFormUtil.getIsEditTextStyle(
                            widget.themeData!, widget.isEdit),
                        inputFormatters: widget.inputFormatters,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle:
                              WaveFormUtil.getHintTextStyle(widget.themeData!),
                          hintText: widget.hint ??
                              WaveIntl.of(context)
                                  .localizedResource
                                  .pleaseEnter,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(0),
                          isDense: true,
                          enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                        textAlign: TextAlign.end,
                        controller: _controller,
                        onChanged: (text) {
                          WaveFormUtil.notifyInputChanged(
                              widget.onChanged, text);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 副标题
          WaveFormUtil.buildSubTitleWidget(widget.subTitle, widget.themeData!),

          WaveFormUtil.buildErrorWidget(widget.error, widget.themeData!)
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // 如果controller由外部创建不需要销毁, 若由内部创建则需要销毁
    _controller.dispose();
  }
}
