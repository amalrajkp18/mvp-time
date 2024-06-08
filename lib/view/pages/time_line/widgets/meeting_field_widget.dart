import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/constants/time_line_page/time_line_page.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/view/widgets/priority_box_widget.dart';

class MeetingFieldWidget extends ConsumerWidget {
  const MeetingFieldWidget({
    super.key,
    required this.moreTap,
    required this.copyTap,
    required this.time,
    required this.priority,
    required this.link,
  });

  final void Function() moreTap;
  final void Function() copyTap;
  final String time;
  final String priority;
  final String link;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: context.height(182),
      padding: EdgeInsets.symmetric(
        horizontal: context.width(8),
        vertical: context.height(12),
      ),
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(
          context.width(8),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColorPalette.grey600.withOpacity(0.1),
            blurRadius: 15,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // title
              SizedBox(
                width: context.width(88),
                child: Text(
                  ref.watch(timeLinePageConstantsProvider).txtMeetingWithClient,
                  style: context.typography.bodyMedium.copyWith(
                    fontFamily: 'Poppins',
                    color: context.colors.primary,
                  ),
                ),
              ),
              // icon
              InkWell(
                onTap: moreTap,
                child: SvgPicture.asset(
                  ref.watch(iconConstantsProvider).icMoreVert,
                  width: context.width(24),
                ),
              )
            ],
          ),
          // time
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // txt label
              Text(
                ref.watch(timeLinePageConstantsProvider).txtTime,
                style: context.typography.bodyLight,
              ),
              // txt time
              Text(
                time,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: context.width(12),
                  fontWeight: FontWeight.w400,
                  color: context.colors.primary,
                ),
              )
            ],
          ),
          // priority
          PriorityBoxWidget(txt: priority),
          // copy link
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.width(6),
              vertical: context.height(6),
            ),
            decoration: BoxDecoration(
              color: AppColorPalette.grey200,
              borderRadius: BorderRadius.circular(context.width(4)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // link txt
                Text(
                  link,
                  style: context.typography.bodyRegular.copyWith(
                    fontFamily: 'Poppins',
                    color: context.colors.primary,
                    fontSize: context.width(11),
                  ),
                ),
                // copy ic btn
                InkWell(
                  onTap: copyTap,
                  child: SvgPicture.asset(
                    ref.watch(iconConstantsProvider).icCopy,
                    width: context.width(16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
