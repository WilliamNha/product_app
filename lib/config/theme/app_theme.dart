import 'package:flutter/material.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/config/theme/colors_dark.dart';
import 'package:product_app/config/theme/colors_light.dart';
import 'package:product_app/config/theme/textstyles_common.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
    extensions: [
      _lightThemeColor,
      _lightThemeText,
    ],
  );

  static final dark = ThemeData.dark().copyWith(
    extensions: [
      _darkThemeColor,
      _darkThemeText,
    ],
  );

  //color
  static const _lightThemeColor = ThemeColor(
      priColor: ColorsLight.priColor,
      bgColor: ColorsLight.bgColor,
      bgColor2: ColorsLight.bgColor2,
      chipBgColor: ColorsLight.dividerColor,
      dividerColor: ColorsLight.dividerColor);

  static const _darkThemeColor = ThemeColor(
    priColor: ColorsDark.priColor,
    bgColor: ColorsDark.bgColor,
    bgColor2: ColorsDark.bgColor2,
    chipBgColor: ColorsDark.dividerColor,
    dividerColor: ColorsDark.dividerColor,
  );

  //text
  static final _lightThemeText = ThemeText(
      text8: TextstylesCommon.text8.copyWith(color: ColorsCommon.black),
      text9Medium: TextstylesCommon.text9Medium.copyWith(color: ColorsCommon.black),
      text10: TextstylesCommon.text10.copyWith(color: ColorsCommon.black),
      text10Medium: TextstylesCommon.text10Medium.copyWith(color: ColorsCommon.black),
      text10SemiBold: TextstylesCommon.text10SemiBold.copyWith(color: ColorsCommon.black),
      text11: TextstylesCommon.text11.copyWith(color: ColorsCommon.black),
      text12: TextstylesCommon.text12.copyWith(color: ColorsCommon.black),
      text12Bold: TextstylesCommon.text12Bold.copyWith(color: ColorsCommon.black),
      text12Medium: TextstylesCommon.text12Medium.copyWith(color: ColorsCommon.black),
      text12SemiBold: TextstylesCommon.text12SemiBold.copyWith(color: ColorsCommon.black),
      text13: TextstylesCommon.text13.copyWith(color: ColorsCommon.black),
      text13Bold: TextstylesCommon.text13Bold.copyWith(color: ColorsCommon.black),
      text14: TextstylesCommon.text14.copyWith(color: ColorsCommon.black),
      text14Bold: TextstylesCommon.text14Bold.copyWith(color: ColorsCommon.black),
      text14Medium: TextstylesCommon.text14Medium.copyWith(color: ColorsCommon.black),
      text14SemiBold: TextstylesCommon.text14SemiBold.copyWith(color: ColorsCommon.black),
      text15: TextstylesCommon.text15.copyWith(color: ColorsCommon.black),
      text15Bold: TextstylesCommon.text15Bold.copyWith(color: ColorsCommon.black),
      text16: TextstylesCommon.text16.copyWith(color: ColorsCommon.black),
      text16Bold: TextstylesCommon.text16Bold.copyWith(color: ColorsCommon.black),
      text16Medium: TextstylesCommon.text16Medium.copyWith(color: ColorsCommon.black),
      text16SemiBold: TextstylesCommon.text16SemiBold.copyWith(color: ColorsCommon.black),
      text18: TextstylesCommon.text18.copyWith(color: ColorsCommon.black),
      text18Bold: TextstylesCommon.text18Bold.copyWith(color: ColorsCommon.black),
      text18Medium: TextstylesCommon.text18Medium.copyWith(color: ColorsCommon.black),
      text18SemiBold: TextstylesCommon.text18SemiBold.copyWith(color: ColorsCommon.black),
      text20: TextstylesCommon.text20.copyWith(color: ColorsCommon.black),
      text20Bold: TextstylesCommon.text20Bold.copyWith(color: ColorsCommon.black),
      text20Medium: TextstylesCommon.text20Medium.copyWith(color: ColorsCommon.black),
      text20SemiBold: TextstylesCommon.text20SemiBold.copyWith(color: ColorsCommon.black),
      text24: TextstylesCommon.text24.copyWith(color: ColorsCommon.black),
      text24Bold: TextstylesCommon.text24Bold.copyWith(color: ColorsCommon.black),
      text24SemiBold: TextstylesCommon.text24SemiBold.copyWith(color: ColorsCommon.black),
      text26: TextstylesCommon.text26.copyWith(color: ColorsCommon.black),
      text26Bold: TextstylesCommon.text26Bold.copyWith(color: ColorsCommon.black),
      text28Bold: TextstylesCommon.text28Bold.copyWith(color: ColorsCommon.black),
      text30: TextstylesCommon.text30.copyWith(color: ColorsCommon.black),
      text30Bold: TextstylesCommon.text30Bold.copyWith(color: ColorsCommon.black),
      text32Bold: TextstylesCommon.text32Bold.copyWith(color: ColorsCommon.black),
      text48bold: TextstylesCommon.text48bold.copyWith(color: ColorsCommon.black));

  static const _darkThemeText = ThemeText(
    text8: TextstylesCommon.text8,
    text9Medium: TextstylesCommon.text9Medium,
    text10: TextstylesCommon.text10,
    text10Medium: TextstylesCommon.text10Medium,
    text10SemiBold: TextstylesCommon.text10SemiBold,
    text11: TextstylesCommon.text11,
    text12: TextstylesCommon.text12,
    text12Bold: TextstylesCommon.text12Bold,
    text12Medium: TextstylesCommon.text12Medium,
    text12SemiBold: TextstylesCommon.text12SemiBold,
    text13: TextstylesCommon.text13,
    text13Bold: TextstylesCommon.text13Bold,
    text14: TextstylesCommon.text14,
    text14Bold: TextstylesCommon.text14Bold,
    text14Medium: TextstylesCommon.text14Medium,
    text14SemiBold: TextstylesCommon.text14SemiBold,
    text15: TextstylesCommon.text15,
    text15Bold: TextstylesCommon.text15Bold,
    text16: TextstylesCommon.text16,
    text16Bold: TextstylesCommon.text16Bold,
    text16Medium: TextstylesCommon.text16Medium,
    text16SemiBold: TextstylesCommon.text16SemiBold,
    text18: TextstylesCommon.text18,
    text18Bold: TextstylesCommon.text18Bold,
    text18Medium: TextstylesCommon.text18Medium,
    text18SemiBold: TextstylesCommon.text18SemiBold,
    text20: TextstylesCommon.text20,
    text20Bold: TextstylesCommon.text20Bold,
    text20Medium: TextstylesCommon.text20Medium,
    text20SemiBold: TextstylesCommon.text20SemiBold,
    text24: TextstylesCommon.text24,
    text24Bold: TextstylesCommon.text24Bold,
    text24SemiBold: TextstylesCommon.text24SemiBold,
    text26: TextstylesCommon.text26,
    text26Bold: TextstylesCommon.text26Bold,
    text28Bold: TextstylesCommon.text28Bold,
    text30: TextstylesCommon.text30,
    text30Bold: TextstylesCommon.text30Bold,
    text32Bold: TextstylesCommon.text32Bold,
    text48bold: TextstylesCommon.text48bold,
  );
}

extension ConvertToFilter on Color {
  ColorFilter convertToFilter() => ColorFilter.mode(this, BlendMode.srcIn);
}
