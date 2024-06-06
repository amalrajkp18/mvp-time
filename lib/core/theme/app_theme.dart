import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_color_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/theme/extension/app_spaces_extension.dart';
import 'package:mvp_time/core/theme/extension/app_typography_extension.dart';

// theme
final class AppTheme {
  ThemeData call(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: AppColorPalette.white900,
      extensions: [
        // color extension
        AppColorExtension(
          primary: AppColorPalette.black900,
          border: AppColorPalette.black150,
          btnText: AppColorPalette.white900,
        ),

        //spaces
        AppSpaceExtension.fromBaseSpace(8),

        //typography
        AppTypographyExtension(
          bodySemibold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          bodyRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(12),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          bodyBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          titleBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(16),
            fontWeight: FontWeight.w700,
            color: AppColorPalette.black900,
          ),
          titleSemiBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          titleMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          titleRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          labelSemiBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          labelMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          hintRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black900,
          ),
          btnMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(18),
            fontWeight: FontWeight.w500,
            color: AppColorPalette.white900,
          ),
        )
      ],
    );
  }
}
