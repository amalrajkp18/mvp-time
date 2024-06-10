import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class TaskGridTile extends StatelessWidget {
  const TaskGridTile({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorPalette.grey100,
        borderRadius: BorderRadius.circular(
          context.width(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // title
          Text(
            title,
            style: context.typography.titleSemiBold.copyWith(
              fontSize: context.width(18),
              color: context.colors.primary,
            ),
          ),
          // sub title
          Text(
            subTitle,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: context.width(14),
              fontWeight: FontWeight.w400,
              color: context.colors.primary,
            ),
          )
        ],
      ),
    );
  }
}
