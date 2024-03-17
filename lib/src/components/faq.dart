import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:waveui/waveui.dart';

final class WaveFaq extends StatefulWidget {
  final String question;
  final String answer;
  final TextStyle? questionTextStyle;
  final Function(String, String?, String)? onTapLink;
  final Duration duration;
  final Widget? expandedIcon;
  final Widget? collapsedIcon;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry padding;

  const WaveFaq({
    super.key,
    required this.question,
    required this.answer,
    this.questionTextStyle,
    this.onTapLink,
    this.expandedIcon,
    this.collapsedIcon,
    this.duration = const Duration(milliseconds: 100),
    this.backgroundColor,
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 16,
      vertical: 10,
    ),
  });

  @override
  State<WaveFaq> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<WaveFaq> with TickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedSize(
        duration: widget.duration,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(WaveConstants.radius),
            color: widget.backgroundColor,
          ),
          padding: widget.padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.question,
                      style: widget.questionTextStyle ??
                          Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                    ),
                  ),
                  if (isExpanded)
                    widget.expandedIcon ??
                        const Icon(
                          Icons.remove,
                          color: Color.fromRGBO(101, 101, 105, 1),
                        )
                  else
                    widget.collapsedIcon ??
                        const Icon(
                          Icons.add,
                          color: Color.fromRGBO(101, 101, 105, 1),
                        )
                ],
              ),
              if (isExpanded) ...[
                const SizedBox(height: 10),
                MarkdownBody(
                  data: widget.answer,
                  onTapLink: widget.onTapLink,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
