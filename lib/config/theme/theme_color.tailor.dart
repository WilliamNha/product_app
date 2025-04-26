// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme_color.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ThemeColorTailorMixin on ThemeExtension<ThemeColor> {
  Color get priColor;
  Color get bgColor;
  Color get bgColor2;
  Color get chipBgColor;
  Color get dividerColor;

  @override
  ThemeColor copyWith({
    Color? priColor,
    Color? bgColor,
    Color? bgColor2,
    Color? chipBgColor,
    Color? dividerColor,
  }) {
    return ThemeColor(
      priColor: priColor ?? this.priColor,
      bgColor: bgColor ?? this.bgColor,
      bgColor2: bgColor2 ?? this.bgColor2,
      chipBgColor: chipBgColor ?? this.chipBgColor,
      dividerColor: dividerColor ?? this.dividerColor,
    );
  }

  @override
  ThemeColor lerp(covariant ThemeExtension<ThemeColor>? other, double t) {
    if (other is! ThemeColor) return this as ThemeColor;
    return ThemeColor(
      priColor: Color.lerp(priColor, other.priColor, t)!,
      bgColor: Color.lerp(bgColor, other.bgColor, t)!,
      bgColor2: Color.lerp(bgColor2, other.bgColor2, t)!,
      chipBgColor: Color.lerp(chipBgColor, other.chipBgColor, t)!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeColor &&
            const DeepCollectionEquality().equals(priColor, other.priColor) &&
            const DeepCollectionEquality().equals(bgColor, other.bgColor) &&
            const DeepCollectionEquality().equals(bgColor2, other.bgColor2) &&
            const DeepCollectionEquality()
                .equals(chipBgColor, other.chipBgColor) &&
            const DeepCollectionEquality()
                .equals(dividerColor, other.dividerColor));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(priColor),
      const DeepCollectionEquality().hash(bgColor),
      const DeepCollectionEquality().hash(bgColor2),
      const DeepCollectionEquality().hash(chipBgColor),
      const DeepCollectionEquality().hash(dividerColor),
    );
  }
}

extension ThemeColorBuildContextProps on BuildContext {
  ThemeColor get themeColor => Theme.of(this).extension<ThemeColor>()!;
  Color get priColor => themeColor.priColor;
  Color get bgColor => themeColor.bgColor;
  Color get bgColor2 => themeColor.bgColor2;
  Color get chipBgColor => themeColor.chipBgColor;
  Color get dividerColor => themeColor.dividerColor;
}
