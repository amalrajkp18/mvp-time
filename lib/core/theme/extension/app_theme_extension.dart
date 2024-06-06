import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/extension/app_color_extension.dart';
import 'package:mvp_time/core/theme/extension/app_typography_extension.dart';

extension AppThemeExtension on BuildContext {
  // color extension
  AppColorExtension get colors =>
      Theme.of(this).extension<AppColorExtension>()!;

  // typography extension
  AppTypographyExtension get typography =>
      Theme.of(this).extension<AppTypographyExtension>()!;
}
