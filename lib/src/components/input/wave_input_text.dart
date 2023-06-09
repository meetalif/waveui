import 'package:get/get.dart';
import 'package:waveui/src/l10n/wave_intl.dart';
import 'package:waveui/src/theme/wave_theme_configurator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///Monitor the input change of the input box
typedef WaveInputTextChangeCallback = Function(String input);

///The monitor submitted by the input box
typedef WaveInputTextSubmitCallback = Function(String input);

///Input complete click keyboard monitor
typedef WaveInputTextEditingCompleteCallback = Function(String input);

///Calculate the height dynamically according to the input content
///In order to solve the problem of height calculation when text input
///Support setting the maximum and minimum height
///Support setting the maximum character limit for input
///Support maximum and minimum row limit

class WaveInputText extends StatelessWidget {
  ///The callback function when the input content of the search box changes
  final WaveInputTextChangeCallback? onTextChange;

  ///Callback after clicking OK
  final WaveInputTextSubmitCallback? onSubmit;

  ///The hint text of the input box, the default is "Please enter..."
  final String? hint;

  /// Error text
  final String? errorText;

  bool isEnabled;

  ///The initial value of the input box, the default is ""
  ///Cannot be defined as a String, compatible with the value passed by the example call
  final String textString;

  ///It is used for finer control of TextField. If this field is passed in, the [textString] parameter will be invalid, and TextEditingController.text can be used for assignment.
  final TextEditingController? textEditingController;

  ///The maximum number of characters, the default is 200
  final int maxLength;

  ///Minimum number of lines, default 1
  final int minLines;

  ///The distance between the text and the border, the default is EdgeInsets.zero
  final EdgeInsetsGeometry padding;

  final TextInputType? keyboardType;

  ///The maximum number of hint lines
  final int? maxHintLines;

  ///The focus controller of the search box
  final FocusNode? focusNode;

  ///Keyboard input behavior, the default is TextInputAction.done
  final TextInputAction textInputAction;

  ///cursor display
  final bool? autoFocus;

  ///Background rounded corners
  final double? borderRadius;

  /// border color
  final Color? borderColor;

  /// Background color of `WaveInputText`
  final Color? backgroundColor;

  WaveInputText({super.key, 
    this.onTextChange,
    this.onSubmit,
    this.keyboardType,
    this.errorText,
    this.maxLength = 0,
    this.minLines = 1,
    this.hint,
    this.backgroundColor,
    this.maxHintLines,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    this.textString = "",
    this.autoFocus,
    this.isEnabled = true,
    this.textEditingController,
    this.focusNode,
    this.textInputAction = TextInputAction.done,
    this.borderRadius = 6,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return _inputText(context);
  }

  Widget _inputText(BuildContext context) {
    String textData = textString;
    if (textString.runes.length > maxLength) {
      var sRunes = textData.runes;
      textData = String.fromCharCodes(sRunes, 0, maxLength);
    }
    var controller = textEditingController;
    if (controller == null) {
      if (textData.isNotEmpty) {
        controller = TextEditingController.fromValue(TextEditingValue(
            text: textData,
            selection: TextSelection.fromPosition(TextPosition(
                affinity: TextAffinity.downstream, offset: textData.length))));
      } else {
        controller = TextEditingController();
      }
    }
    return TextField(
      //Add to keep the cursor at the end of the text
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.multiline,
      maxLength: maxLength == 0 ? null : maxLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      maxLines: null,
      autofocus: autoFocus ?? false,
      focusNode: focusNode,
      minLines: minLines,
      textAlign: TextAlign.left,
      textInputAction: textInputAction,
      style: Get.textTheme.bodyLarge,
      buildCounter: maxLength == 0
          ? null
          : (
              BuildContext context, {
              required int currentLength,
              required int? maxLength,
              required bool isFocused,
            }) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "$currentLength",
                    style: TextStyle(
                      color: (currentLength == 0
                          ? const Color(0xffcccccc)
                          : WaveThemeConfigurator.instance
                              .getConfig()
                              .commonConfig
                              .colorTextSecondary),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "/$maxLength",
                    style: const TextStyle(
                      color: Color(0xffcccccc),
                      fontSize: 16,
                    ),
                  ),
                ],
              );
            },
      decoration: InputDecoration(
        hintText: hint ?? WaveIntl.of(context).localizedResource.pleaseEnter,
        hintMaxLines: maxHintLines,
        errorText: errorText,
        enabled: isEnabled,
        fillColor: isEnabled
            ? backgroundColor ?? Get.theme.inputDecorationTheme.fillColor
            : Colors.grey.withOpacity(0.2),
      ),
      onSubmitted: (text) {
        if (onSubmit != null) {
          onSubmit!(text);
        }
      },

      onChanged: (text) {
        if (onTextChange != null) {
          onTextChange!(text);
        }
      },
    );
  }
}
