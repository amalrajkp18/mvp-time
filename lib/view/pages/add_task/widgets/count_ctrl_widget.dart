import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class CountCtrlWidget extends ConsumerWidget {
  const CountCtrlWidget({
    super.key,
    required this.title,
    required this.count,
    required this.decrementTap,
    required this.incrementTap,
  });

  final String title;
  final int count;
  final void Function() decrementTap;
  final void Function() incrementTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title text
        Text(
          title,
          style: context.typography.titleSemiBold.copyWith(
            color: AppColorPalette.grey550,
          ),
        ),
        // height spacer
        WhiteSpacer()(context, height: 16),
        // count controller
        Center(
          child: Container(
            width: context.width(311),
            height: context.height(64),
            padding: EdgeInsets.symmetric(
              horizontal: context.width(10),
              vertical: context.height(8),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                context.width(36),
              ),
              border: Border.all(
                color: AppColorPalette.grey550,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // decrement btn
                InkWell(
                  onTap: decrementTap,
                  child: CircleAvatar(
                    backgroundColor: AppColorPalette.grey200,
                    child: Icon(
                      Icons.remove,
                      color: context.colors.secondary,
                    ),
                  ),
                ),
                // count
                Text(
                  count.toString(),
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: context.width(18),
                    fontWeight: FontWeight.w500,
                    color: context.colors.primary,
                  ),
                ),
                // increment btn
                InkWell(
                  onTap: incrementTap,
                  child: CircleAvatar(
                    backgroundColor: context.colors.primary,
                    child: Icon(
                      Icons.add,
                      color: context.colors.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
