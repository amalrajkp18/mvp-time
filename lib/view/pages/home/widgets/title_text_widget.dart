import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning, Kyle!",
          style: context.typography.titleRegular.copyWith(
            fontSize: context.width(13),
            color: AppColorPalette.grey700,
          ),
        ),
        Text(
          "Let’s Start your task",
          style: context.typography.titleBold,
        )
      ],
    );
  }
}
