import 'package:flutter/material.dart';

class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle bodySemibold;
  final TextStyle bodyMedium;
  final TextStyle bodyRegular;
  final TextStyle bodyBold;
  final TextStyle bodyLight;
  final TextStyle titleBold;
  final TextStyle titleSemiBold;
  final TextStyle titleMedium;
  final TextStyle titleRegular;
  final TextStyle labelSemiBold;
  final TextStyle labelMedium;
  final TextStyle labelRegular;
  final TextStyle hintRegular;
  final TextStyle btnSemiBold;
  final TextStyle btnMedium;
  final TextStyle btnRegular;
  final TextStyle alertTitleMedium;
  final TextStyle alertContentRegular;
  final TextStyle alertHintRegular;

  AppTypographyExtension({
    required this.btnSemiBold,
    required this.btnMedium,
    required this.btnRegular,
    required this.bodySemibold,
    required this.bodyMedium,
    required this.bodyLight,
    required this.bodyRegular,
    required this.bodyBold,
    required this.titleBold,
    required this.titleSemiBold,
    required this.titleMedium,
    required this.titleRegular,
    required this.labelSemiBold,
    required this.labelMedium,
    required this.labelRegular,
    required this.hintRegular,
    required this.alertTitleMedium,
    required this.alertContentRegular,
    required this.alertHintRegular,
  });
  @override
  ThemeExtension<AppTypographyExtension> copyWith({
    TextStyle? bodySemibold,
    TextStyle? bodyMedium,
    TextStyle? bodyRegular,
    TextStyle? bodyBold,
    TextStyle? bodyLight,
    TextStyle? titleBold,
    TextStyle? titleSemiBold,
    TextStyle? titleMedium,
    TextStyle? titleRegular,
    TextStyle? labelSemiBold,
    TextStyle? labelMedium,
    TextStyle? labelRegular,
    TextStyle? hintRegular,
    TextStyle? btnSemiBold,
    TextStyle? btnMedium,
    TextStyle? btnRegular,
    TextStyle? alertTitleMedium,
    TextStyle? alertContentRegular,
    TextStyle? alertHintRegular,
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
      labelRegular: labelRegular ?? this.labelRegular,
      hintRegular: hintRegular ?? this.hintRegular,
      btnMedium: btnMedium ?? this.btnMedium,
      alertTitleMedium: alertTitleMedium ?? this.alertTitleMedium,
      alertContentRegular: alertTitleMedium ?? this.alertContentRegular,
      alertHintRegular: alertTitleMedium ?? this.alertContentRegular,
      bodyLight: bodyLight ?? this.bodyLight,
      btnRegular: btnRegular ?? this.btnRegular,
      btnSemiBold: btnSemiBold ?? this.btnSemiBold,
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
      labelRegular: TextStyle.lerp(labelRegular, other.labelRegular, t)!,
      hintRegular: TextStyle.lerp(hintRegular, other.hintRegular, t)!,
      btnMedium: TextStyle.lerp(btnMedium, other.btnMedium, t)!,
      btnRegular: TextStyle.lerp(btnRegular, other.btnRegular, t)!,
      btnSemiBold: TextStyle.lerp(btnSemiBold, other.btnSemiBold, t)!,
      alertTitleMedium:
          TextStyle.lerp(alertTitleMedium, other.alertTitleMedium, t)!,
      alertContentRegular:
          TextStyle.lerp(alertContentRegular, other.alertContentRegular, t)!,
      alertHintRegular:
          TextStyle.lerp(alertHintRegular, other.alertHintRegular, t)!,
      bodyLight: TextStyle.lerp(bodyLight, other.bodyLight, t)!,
    );
  }
}
