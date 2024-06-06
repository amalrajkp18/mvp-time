import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/controller/bottom_nav/bottom_nav_index_provider.dart';
import 'package:mvp_time/core/constants/bottom_nav/bottom_nav_constants.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/widgets/bottom_nav_bar/bottom_nav_icon_widget.dart';

class BottomNavBarWidget extends ConsumerWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      height: context.height(92),
      padding: EdgeInsets.symmetric(horizontal: context.width(25)),
      decoration: BoxDecoration(
        color: context.colors.secondary,
        boxShadow: [
          BoxShadow(
            color: AppColorPalette.blueGrey200..withOpacity(0.25),
            blurRadius: 40,
            spreadRadius: -4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // home
          InkWell(
            onTap: () {
              ref.read(bottonNavIndexProvider.notifier).state = 0;
            },
            child: BottomNavIconWidget(
              icon: ref.watch(iconConstantsProvider).icHome,
              text: ref.watch(bottomNavConstantsProvider).txtHome,
              color: ref.watch(bottonNavIndexProvider) == 0
                  ? AppColorPalette.black500
                  : AppColorPalette.grey300,
            ),
          ),
          // projects
          InkWell(
            onTap: () {
              ref.read(bottonNavIndexProvider.notifier).state = 1;
            },
            child: BottomNavIconWidget(
              icon: ref.watch(iconConstantsProvider).icFolder,
              text: ref.watch(bottomNavConstantsProvider).txtProject,
              color: ref.watch(bottonNavIndexProvider) == 1
                  ? AppColorPalette.black500
                  : AppColorPalette.grey300,
            ),
          ),
          // new task
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: AppColorPalette.black500,
              radius: context.width(32),
              child: Icon(
                Icons.add,
                color: AppColorPalette.white100,
                size: context.width(38),
              ),
            ),
          ),
          // time line
          InkWell(
            onTap: () {
              ref.read(bottonNavIndexProvider.notifier).state = 2;
            },
            child: BottomNavIconWidget(
              icon: ref.watch(iconConstantsProvider).icTimeLine,
              text: ref.watch(bottomNavConstantsProvider).txtTimeLine,
              color: ref.watch(bottonNavIndexProvider) == 2
                  ? AppColorPalette.black500
                  : AppColorPalette.grey300,
            ),
          ),
          // profile
          InkWell(
            onTap: () {
              ref.read(bottonNavIndexProvider.notifier).state = 3;
            },
            child: BottomNavIconWidget(
              icon: ref.watch(iconConstantsProvider).icProfileCircle,
              text: ref.watch(bottomNavConstantsProvider).txtAccount,
              color: ref.watch(bottonNavIndexProvider) == 3
                  ? AppColorPalette.black500
                  : AppColorPalette.grey300,
            ),
          ),
        ],
      ),
    );
  }
}
