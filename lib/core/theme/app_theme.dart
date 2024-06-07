import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_color_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/theme/extension/app_typography_extension.dart';

// theme
final class AppTheme {
  ThemeData call(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: AppColorPalette.white100,
      appBarTheme: AppBarTheme(
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColorPalette.white100,
        titleTextStyle: TextStyle(
          fontFamily: 'montserrat',
          fontSize: context.width(16),
          fontWeight: FontWeight.w600,
          color: AppColorPalette.grey900,
        ),
      ),
      extensions: [
        // color extension
        AppColorExtension(
          primary: AppColorPalette.black500,
          secondary: AppColorPalette.white100,
          border: AppColorPalette.black150,
          btnText: AppColorPalette.white100,
        ),

        //typography
        AppTypographyExtension(
          bodySemibold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(23),
            fontWeight: FontWeight.w600,
            color: AppColorPalette.black500,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(13),
            fontWeight: FontWeight.w500,
            color: AppColorPalette.grey700,
          ),
          bodyRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(12),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.grey700,
          ),
          bodyBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black500,
          ),
          bodyLight: TextStyle(
            fontFamily: 'Poppins',
            fontSize: context.width(12),
            fontWeight: FontWeight.w300,
            color: AppColorPalette.grey500,
          ),
          titleBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(16),
            fontWeight: FontWeight.w700,
            color: AppColorPalette.black500,
          ),
          titleSemiBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w600,
            color: AppColorPalette.grey900,
          ),
          titleMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(13),
            fontWeight: FontWeight.w500,
            color: AppColorPalette.grey700,
          ),
          titleRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black500,
          ),
          labelSemiBold: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black500,
          ),
          labelMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black500,
          ),
          labelRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.grey650,
          ),
          hintRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(14),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black500,
          ),
          btnMedium: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(18),
            fontWeight: FontWeight.w500,
            color: AppColorPalette.white100,
          ),
          btnRegular: TextStyle(
            fontFamily: 'montserrat',
            fontSize: context.width(16),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.grey900,
          ),
          alertTitleMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: context.width(14),
            fontWeight: FontWeight.w500,
            color: AppColorPalette.black500,
          ),
          alertContentRegular: TextStyle(
            fontFamily: 'Poppins',
            fontSize: context.width(16),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.black500,
          ),
          alertHintRegular: TextStyle(
            fontFamily: 'Poppins',
            fontSize: context.width(12),
            fontWeight: FontWeight.w400,
            color: AppColorPalette.grey500,
          ),
        )
      ],
    );
  }
}
