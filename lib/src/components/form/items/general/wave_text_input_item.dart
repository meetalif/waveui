import 'package:waveui/src/components/form/base/wave_form_item_type.dart';
import 'package:waveui/src/components/form/utils/wave_form_util.dart';
import 'package:waveui/src/l10n/wave_intl.dart';
import 'package:waveui/src/theme/wave_theme_configurator.dart';
import 'package:waveui/src/theme/configs/wave_form_config.dart';
import 'package:waveui/src/constants/wave_fonts_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:waveui/waveui.dart';

class WaveTextInputFormItem extends StatefulWidget {
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final String? label;
  final String type = WaveInputItemType.textInputType;
  final String title;
  final String? subTitle;
  final String? tipLabel;
  final String prefixIconType;

  /// 录入项错误提示
  final String? error;

  /// 录入项是否为必填项（展示*图标） 默认为 false 不必填
  final bool isRequire;

  /// 录入项 是否可编辑
  final bool isEdit;

  /// 录入项 是否模糊文本（输入后*代替文本，常用于密码框） 默认值：false
  final bool obscureText;

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

  /// 固定内容
  final String? prefixText;

  /// 提示文案
  final String? hint;

  /// 单位
  final String? unit;

  final TextInputType? inputType;

  /// 是否自动获取焦点
  bool autofocus;

  /// 最大可输入字符数
  final int? maxCharCount;
  final List<TextInputFormatter>? inputFormatters;

  /// 输入变化回调
  final ValueChanged<dynamic>? onChanged;

  final TextEditingController? controller;

  /// 背景色
  final Color? backgroundColor;

  /// form配置
  WaveFormItemConfig? themeData;

  WaveTextInputFormItem({
    Key? key,
    this.label,
    this.title = "",
    this.subTitle,
    this.tipLabel,
    this.focusNode,
    this.textInputAction,
    this.prefixIconType = WavePrefixIconType.normal,
    this.error,
    this.isEdit = true,
    this.obscureText = false,
    this.isRequire = false,
    this.isPrefixIconEnabled = false,
    this.onAddTap,
    this.onRemoveTap,
    this.onTip,
    this.prefixText,
    this.hint,
    this.unit,
    this.maxCharCount,
    this.autofocus = false,
    this.inputType,
    this.inputFormatters,
    this.onChanged,
    this.controller,
    this.backgroundColor,
    this.themeData,
  }) : super(key: key) {
    themeData ??= WaveFormItemConfig();
    themeData = WaveThemeConfigurator.instance
        .getConfig(configId: themeData!.configId)
        .formItemConfig
        .merge(themeData);
    themeData =
        themeData!.merge(WaveFormItemConfig(backgroundColor: backgroundColor));
  }

  @override
  State<StatefulWidget> createState() {
    return WaveTextInputFormItemState();
  }
}

class WaveTextInputFormItemState extends State<WaveTextInputFormItem> {
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
                      Offstage(
                        offstage: (widget.prefixText == null),
                        child: Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              widget.prefixText ?? "",
                              style: WaveFormUtil.getTitleTextStyle(
                                  widget.themeData!),
                            )),
                      ),
                      WaveFormUtil.buildTipLabelWidget(
                          widget.tipLabel, widget.onTip, widget.themeData!),
                    ],
                  ),
                ),
                Expanded(
                  child: TextField(
                    autofocus: widget.autofocus,
                    focusNode: widget.focusNode,
                    keyboardType: widget.inputType,
                    textInputAction: widget.textInputAction,
                    enabled: widget.isEdit,
                    obscureText: widget.obscureText,
                    maxLines: 1,
                    maxLength: widget.maxCharCount,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle:
                          Get.textTheme.bodySmall?.copyWith(fontSize: 16),
                      hintText: widget.hint ??
                          WaveIntl.of(context).localizedResource.pleaseEnter,
                      counterText: "",
                      contentPadding: const EdgeInsets.all(0),
                      isDense: true,
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent)),
                    ),
                    textAlign: TextAlign.end,
                    controller: _controller,
                    inputFormatters: widget.inputFormatters,
                    onChanged: (text) {
                      WaveFormUtil.notifyInputChanged(widget.onChanged, text);
                    },
                  ),
                ),
                Offstage(
                  offstage: (widget.unit == null),
                  child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        widget.unit ?? "",
                        style: const TextStyle(
                          color: Color(0xFF101010),
                          fontSize: WaveFonts.f16,
                        ),
                      )),
                ),
              ],
            ),
          ),
          WaveFormUtil.buildSubTitleWidget(widget.subTitle, widget.themeData!),
          if (widget.error != null)
            WaveFormUtil.buildErrorWidget(widget.error!, widget.themeData!)
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    if (widget.controller == null) {
      _controller.dispose();
    }
  }
}
