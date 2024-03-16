import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/data_layer/constants/app_enum.dart';
import 'package:order_delivery/data_layer/constants/variables.dart';

class ThemeManager {
  ThemeManager._();

  static TextStyle _base(
          {double? size,
          Color? color,
          required FontWeight fontWeight,
          TextDecoration? textDecoration,
          String? fontFamily}) =>
      TextStyle(
        decorationColor: AppColors.black.withOpacity(0.5),
        fontFamily: fontFamily ?? Variables.readexPro,
        fontSize: size ?? 14,
        color: color ?? AppColors.primary,
        fontWeight: fontWeight,
        height: 1.5,
        decoration: textDecoration ?? TextDecoration.none,
      );

  static TextStyle regular({double? size, Color? color, TextDecoration? textDecoration, String? fontFamily}) => _base(
        fontWeight: FontWeight.w400,
        size: size,
        color: color,
        textDecoration: textDecoration,
        fontFamily: fontFamily,
      );

  static TextStyle light({double? size, Color? color, TextDecoration? textDecoration, String? fontFamily}) => _base(
        fontWeight: FontWeight.w300,
        size: size,
        color: color,
        textDecoration: textDecoration,
        fontFamily: fontFamily,
      );

  static TextStyle extraLight({double? size, Color? color, TextDecoration? textDecoration, String? fontFamily}) =>
      _base(
        fontWeight: FontWeight.w200,
        size: size,
        color: color,
        textDecoration: textDecoration,
        fontFamily: fontFamily,
      );

  static TextStyle medium({double? size, Color? color, TextDecoration? textDecoration, String? fontFamily}) => _base(
        fontWeight: FontWeight.w500,
        size: size,
        color: color,
        textDecoration: textDecoration,
        fontFamily: fontFamily,
      );

  static TextStyle semiBold({double? size, Color? color, TextDecoration? textDecoration, String? fontFamily}) => _base(
        fontWeight: FontWeight.w600,
        size: size,
        color: color,
        textDecoration: textDecoration,
        fontFamily: fontFamily,
      );

  static TextStyle fontWeight(CustomButtonTextFontWeight value, {double? size, Color? color}) {
    switch (value) {
      case CustomButtonTextFontWeight.extraLight:
        return extraLight(size: size, color: color);
      case CustomButtonTextFontWeight.light:
        return light(size: size, color: color);
      case CustomButtonTextFontWeight.regular:
        return regular(size: size, color: color);
      case CustomButtonTextFontWeight.medium:
        return medium(size: size, color: color);
      case CustomButtonTextFontWeight.semiBold:
        return semiBold(size: size, color: color);
      case CustomButtonTextFontWeight.bold:
        return bold(size: size, color: color);
    }
  }

  static TextStyle bold({double? size, Color? color, TextDecoration? textDecoration}) =>
      _base(fontWeight: FontWeight.w700, size: size, color: color, textDecoration: textDecoration);
}
