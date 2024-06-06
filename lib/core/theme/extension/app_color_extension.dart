import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  final Color primary;
  final Color secondary;
  final Color border;
  final Color btnText;

  AppColorExtension({
    required this.primary,
    required this.border,
    required this.btnText,
    required this.secondary,
  });

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? primary,
    Color? secondary,
    Color? border,
    Color? btnText,
  }) {
    return AppColorExtension(
      primary: primary ?? this.primary,
      border: border ?? this.border,
      btnText: btnText ?? this.btnText,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }
    return AppColorExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      border: Color.lerp(border, other.border, t)!,
      btnText: Color.lerp(btnText, other.btnText, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
    );
  }
}
