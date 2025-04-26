import 'package:flutter/material.dart';
import 'package:product_app/config/theme/colors_common.dart';

class WidgetButton extends StatelessWidget {
  final Function() onPress;
  final Widget child;
  final double? borderRadiusNum;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? highlightColor;
  final Color? splashColor;
  final Border? border;
  const WidgetButton({
    super.key,
    required this.child,
    required this.onPress,
    this.splashColor,
    this.borderRadiusNum,
    this.backgroundColor,
    this.borderRadius,
    this.highlightColor,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(borderRadiusNum ?? 5);
    return Material(
      color: backgroundColor,
      borderRadius: borderRadius,
      child: InkWell(
        highlightColor: highlightColor ?? ColorsCommon.grey.withOpacity(0.2),
        onTap: onPress,
        borderRadius: borderRadius,
        child: Container(
          decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
          ),
          child: child,
        ),
      ),
    );
  }
}
