import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class NotificationBtWidget extends StatelessWidget {
  const NotificationBtWidget({
    super.key,
    required this.text,
    this.isOutlined = false,
    required this.onPressed,
  });
  final String text;
  final bool isOutlined;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor:
            isOutlined ? context.colors.secondary : context.colors.primary,
        minimumSize: Size(
          context.width(isOutlined ? 58 : 100),
          context.height(34),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.width(12),
          ),
          side: isOutlined
              ? BorderSide(
                  color: context.colors.primary,
                  width: 1,
                )
              : BorderSide.none,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: context.width(11),
          fontWeight: FontWeight.w400,
          color: isOutlined ? context.colors.primary : context.colors.secondary,
        ),
      ),
    );
  }
}
