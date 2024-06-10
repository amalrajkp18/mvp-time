import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class NotificationIcBtn extends ConsumerWidget {
  const NotificationIcBtn({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(right: context.width(16)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(context.width(22)),
        child: CircleAvatar(
          backgroundColor: AppColorPalette.grey50,
          child: Stack(
            children: [
              SvgPicture.asset(
                ref.watch(iconConstantsProvider).icNotification,
              ),
              Positioned(
                right: context.width(2),
                child: CircleAvatar(
                  radius: context.width(5),
                  backgroundColor: AppColorPalette.red400,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
