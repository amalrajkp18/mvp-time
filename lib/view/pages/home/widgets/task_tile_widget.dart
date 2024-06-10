import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class TaskTileWidget extends StatelessWidget {
  const TaskTileWidget({
    super.key,
    required this.indicatorText,
    required this.title,
    required this.sub,
    required this.icon,
    required this.dateAndTime,
    this.points,
    required this.hours,
    required this.onTap,
  });

  final String indicatorText;
  final String title;
  final String sub;
  final IconData icon;
  final String dateAndTime;
  final String? points;
  final String hours;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: context.height(168),
        padding: EdgeInsets.symmetric(
          horizontal: context.width(12),
          vertical: context.height(10),
        ),
        decoration: BoxDecoration(
          color: context.colors.secondary,
          borderRadius: BorderRadius.circular(
            context.width(12),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColorPalette.blueGrey200.withOpacity(0.25),
              blurRadius: 40,
              spreadRadius: 0,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //indactor text
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.width(8),
                vertical: context.height(6),
              ),
              decoration: BoxDecoration(
                color: AppColorPalette.grey100,
                borderRadius: BorderRadius.circular(
                  context.width(30),
                ),
              ),
              child: Text(
                indicatorText,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: context.width(10),
                    color: context.colors.primary),
              ),
            ),
            // heigth spacer
            WhiteSpacer()(context, height: 12),
            // center text and icon
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // txt
                Column(
                  children: [
                    // title
                    Text(
                      title,
                      style: context.typography.bodySemibold.copyWith(
                        fontSize: context.width(14),
                      ),
                    ),
                    // heigth spacer
                    WhiteSpacer()(context, height: 8),
                    // sub txt
                    Text(
                      sub,
                      style: context.typography.bodyRegular,
                    )
                  ],
                ),
                // icon
                CircleAvatar(
                  backgroundColor: context.colors.primary,
                  radius: context.width(12),
                  child: Icon(
                    icon,
                    color: context.colors.secondary,
                    size: context.width(16),
                  ),
                )
              ],
            ),
            // divider
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: context.height(6),
              ),
              child: const Divider(
                color: AppColorPalette.grey100,
              ),
            ),
            //bottom text
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // date and time
                Text(
                  dateAndTime,
                  style: context.typography.bodyMedium.copyWith(
                    color: AppColorPalette.grey700,
                  ),
                ),
                // points
                points != null
                    ? Text(
                        points ?? "",
                        style: context.typography.bodyMedium.copyWith(
                          color: AppColorPalette.grey700,
                        ),
                      )
                    : const SizedBox.shrink(),
                // hours
                Text(
                  hours,
                  style: context.typography.bodyMedium.copyWith(
                    color: AppColorPalette.grey700,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
