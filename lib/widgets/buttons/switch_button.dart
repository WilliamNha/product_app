import 'package:flutter/cupertino.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';

class SwitchButton extends StatefulWidget {
  final String txt;
  final TextStyle? textStyle;
  final Function(bool value) onSelect;
  final Color? trackColor;
  final Color? activeColor;
  final bool? isSelect;

  const SwitchButton({
    super.key,
    this.textStyle,
    required this.txt,
    this.trackColor,
    this.activeColor,
    required this.onSelect,
    required this.isSelect,
  });

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  late bool isSelect;

  @override
  void initState() {
    super.initState();
    assignValue();
  }

  @override
  void didUpdateWidget(SwitchButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (isSelect != widget.isSelect) {
      assignValue();
    }
  }

  void assignValue() {
    isSelect = widget.isSelect ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.txt,
          style: widget.textStyle ?? context.themeText.text16,
        ),
        Transform.scale(
          scale: 0.75,
          child: Center(
            child: CupertinoSwitch(
              value: isSelect,
              activeColor: widget.activeColor ?? context.themeColor.priColor,
              trackColor: widget.trackColor ?? context.themeColor.priColor,
              onChanged: (bool value) {
                setState(() {
                  isSelect = value;
                });
                widget.onSelect(value);
              },
            ),
          ),
        ),
      ],
    );
  }
}
