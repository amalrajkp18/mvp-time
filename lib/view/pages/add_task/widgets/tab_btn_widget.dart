import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class TabBtnWidget extends StatelessWidget {
  const TabBtnWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.isFilled = false,
  });
  final String text;
  final void Function() onPressed;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: context.width(16),
          vertical: context.height(8),
        ),
        backgroundColor:
            isFilled ? context.colors.primary : context.colors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.width(30)),
          side: isFilled
              ? BorderSide.none
              : const BorderSide(
                  color: AppColorPalette.grey100,
                ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: context.typography.btnSemiBold.copyWith(
          color: isFilled ? context.colors.secondary : context.colors.primary,
        ),
      ),
    );
  }
}
