import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_color_extension.dart';
import 'package:mvp_time/core/theme/extension/app_spaces_extension.dart';

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
        // AppTypographyExtension(
        //     bodySemibold: bodySemibold,
        //     bodyMedium: bodyMedium,
        //     bodyRegular: bodyRegular,
        //     bodyBold: bodyBold,
        //     titleBold: titleBold,
        //     titleSemiBold: titleSemiBold,
        //     titleMedium: titleMedium,
        //     titleRegular: titleRegular,
        //     labelSemiBold: labelSemiBold,
        //     labelMedium: labelMedium)
      ],
    );
  }
}
