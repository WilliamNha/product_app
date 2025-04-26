import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme_color.tailor.dart';

@TailorMixin()
class ThemeColor extends ThemeExtension<ThemeColor> with _$ThemeColorTailorMixin {
  const ThemeColor({
    required this.priColor,
    required this.bgColor,
    required this.bgColor2,
    required this.chipBgColor,
    required this.dividerColor,
  });
  @override
  final Color priColor;
  @override
  final Color bgColor;
  @override
  final Color bgColor2;
  @override
  final Color chipBgColor;
  @override
  final Color dividerColor;
}

extension ConvertToFilter on Color {
  ColorFilter convertToFilter() => ColorFilter.mode(this, BlendMode.srcIn);
}
