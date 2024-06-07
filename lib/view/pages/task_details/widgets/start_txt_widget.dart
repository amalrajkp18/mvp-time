import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class StartTextWidget extends StatelessWidget {
  const StartTextWidget({
    super.key,
    required this.labelText,
    required this.text,
  });

  final String labelText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.height(24),
        bottom: context.height(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // lable
          Text(
            labelText,
            style: context.typography.labelRegular,
          ),
          Text(
            text,
            style: context.typography.bodyMedium.copyWith(
              fontSize: context.width(15),
              color: context.colors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
