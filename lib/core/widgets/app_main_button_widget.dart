import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class AppMainButtonWidget extends StatelessWidget {
  const AppMainButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: context.colors.primary,
        minimumSize: Size(
          double.infinity,
          context.height(48),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.width(10),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: context.typography.btnMedium,
      ),
    );
  }
}
