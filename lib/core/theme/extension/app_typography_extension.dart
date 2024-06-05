import 'package:flutter/material.dart';

class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle bodySemibold;
  final TextStyle bodyMedium;
  final TextStyle bodyRegular;
  final TextStyle bodyBold;
  final TextStyle titleBold;
  final TextStyle titleSemiBold;
  final TextStyle titleMedium;
  final TextStyle titleRegular;
  final TextStyle labelSemiBold;
  final TextStyle labelMedium;

  AppTypographyExtension({
    required this.bodySemibold,
    required this.bodyMedium,
    required this.bodyRegular,
    required this.bodyBold,
    required this.titleBold,
    required this.titleSemiBold,
    required this.titleMedium,
    required this.titleRegular,
    required this.labelSemiBold,
    required this.labelMedium,
  });
  @override
  ThemeExtension<AppTypographyExtension> copyWith({
    TextStyle? bodySemibold,
    TextStyle? bodyMedium,
    TextStyle? bodyRegular,
    TextStyle? bodyBold,
    TextStyle? titleBold,
    TextStyle? titleSemiBold,
    TextStyle? titleMedium,
    TextStyle? titleRegular,
    TextStyle? labelSemiBold,
    TextStyle? labelMedium,
  }) {
    return AppTypographyExtension(
      bodySemibold: bodySemibold ?? this.bodySemibold,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodyRegular: bodyRegular ?? this.bodyRegular,
      bodyBold: bodyBold ?? this.bodyBold,
      titleBold: titleBold ?? this.titleBold,
      titleSemiBold: titleSemiBold ?? this.titleSemiBold,
      titleMedium: titleMedium ?? this.titleMedium,
      titleRegular: titleRegular ?? this.titleRegular,
      labelSemiBold: labelSemiBold ?? this.labelSemiBold,
      labelMedium: labelMedium ?? this.labelMedium,
    );
  }

  @override
  ThemeExtension<AppTypographyExtension> lerp(
      covariant ThemeExtension<AppTypographyExtension>? other, double t) {
    if (other is! AppTypographyExtension) {
      return this;
    }
    return AppTypographyExtension(
      bodySemibold: TextStyle.lerp(bodySemibold, other.bodySemibold, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyRegular: TextStyle.lerp(bodyRegular, other.bodyRegular, t)!,
      bodyBold: TextStyle.lerp(bodyBold, other.bodyBold, t)!,
      titleBold: TextStyle.lerp(titleBold, other.titleBold, t)!,
      titleSemiBold: TextStyle.lerp(titleSemiBold, other.titleSemiBold, t)!,
      titleMedium: TextStyle.lerp(titleMedium, titleMedium, t)!,
      titleRegular: TextStyle.lerp(titleRegular, other.titleRegular, t)!,
      labelSemiBold: TextStyle.lerp(labelSemiBold, other.labelMedium, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
    );
  }
}
