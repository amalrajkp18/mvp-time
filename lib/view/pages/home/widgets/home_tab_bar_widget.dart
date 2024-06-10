import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/core/constants/home_page/home_page_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class HomeTabBarWidget extends ConsumerWidget {
  const HomeTabBarWidget({
    super.key,
    required this.tabController,
  });
  final TabController tabController;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabBar(
      controller: tabController,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: context.colors.primary,
      unselectedLabelColor: AppColorPalette.grey600,
      dividerColor: AppColorPalette.grey100,
      labelStyle: context.typography.labelMedium,
      unselectedLabelStyle: context.typography.labelRegular.copyWith(
        fontSize: context.width(18),
      ),
      tabs: [
        Tab(
          text: ref.watch(homePageConstantsProvider).txtTab0,
        ),
        Tab(
          text: ref.watch(homePageConstantsProvider).txtTab1,
        ),
      ],
    );
  }
}
