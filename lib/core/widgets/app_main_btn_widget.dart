import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class AppMainBtnWidget extends StatelessWidget {
  const AppMainBtnWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.isOutlined = false,
  });
  final String text;
  final void Function() onPressed;
  final bool isOutlined;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor:
            isOutlined ? context.colors.secondary : context.colors.primary,
        minimumSize: Size(
          double.infinity,
          context.height(48),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.width(10),
          ),
        ),
        side: isOutlined
            ? BorderSide(color: context.colors.primary, width: 1)
            : null,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: context.typography.btnMedium.copyWith(
          color: isOutlined ? context.colors.primary : context.colors.secondary,
        ),
      ),
    );
  }
}
