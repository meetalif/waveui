import 'package:get/get.dart';
import 'package:waveui/src/theme/wave_theme_configurator.dart';
import 'package:waveui/src/utils/css/wave_core_funtion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// 富文本填充生成器

/// 用于链式去生成富文本样式的文案 如果是直接的标签可以用css
class WaveRichTextGenerator {
  WaveRichTextGenerator();

  final List<InlineSpan> _spanList = [];
  int _maxLine = 100;
  TextOverflow? _overflow;

  /// 添加超链接部分的文案
  /// text 是显示的文案
  /// url 是超链接的 url
  /// fontsize 是显示大小
  /// richTextLinkClick 是超链接点击的回调
  WaveRichTextGenerator addTextWithLink(
    String text, {
    String? url,
    TextStyle? textStyle,
    Color? linkColor,
    double? fontSize,
    FontWeight? fontWeight,
    WaveHyperLinkCallback? richTextLinkClick,
  }) {
    _spanList.add(
      TextSpan(
        style: textStyle ??
            TextStyle(
              color: linkColor ?? Get.theme.colorScheme.primary,
              fontWeight: fontWeight ?? FontWeight.normal,
              fontSize: fontSize ?? 16,
            ),
        text: text,
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            if (richTextLinkClick != null) {
              richTextLinkClick(text, url);
            }
          },
      ),
    );
    return this;
  }

  /// 添加自定义文案
  /// fontsize 是文案大小 默认是16
  /// color 是文案的颜色 默认是深黑色
  WaveRichTextGenerator addText(
    String text, {
    TextStyle? textStyle,
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) {
    _spanList.add(
      TextSpan(
        text: text,
        style: textStyle ??
            TextStyle(
              color: color ??
                  WaveThemeConfigurator.instance
                      .getConfig()
                      .commonConfig
                      .colorTextBase,
              fontSize: fontSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
      ),
    );
    return this;
  }

  /// 添加Icon
  WaveRichTextGenerator addIcon(
    Widget? icon, {
    PlaceholderAlignment? alignment,
  }) {
    _spanList.add(
      WidgetSpan(
        alignment: alignment ?? PlaceholderAlignment.top,
        child: icon ?? const SizedBox.shrink(),
      ),
    );
    return this;
  }

  /// 设置最多文案显示几行 默认是100行
  WaveRichTextGenerator setMaxLines(int maxLine) {
    if (maxLine > 0) {
      _maxLine = maxLine;
    }
    return this;
  }

  /// 设置最多文案显示几行 默认是100行
  WaveRichTextGenerator setTextOverflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }

  /// build出福文本
  Widget build() {
    if (_spanList.isEmpty) {
      return const SizedBox.shrink();
    }
    return ExcludeSemantics(
      excluding: true,
      child: Text.rich(
        TextSpan(children: _spanList),
        maxLines: _maxLine,
        overflow: _overflow,
      ),
    );
  }

  void clear() {
    _spanList.clear();
  }
}
