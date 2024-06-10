import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/controller/tab/tab_index_provider.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/view/pages/home/widgets/history_task_list.dart';
import 'package:mvp_time/view/pages/home/widgets/notification_ic_btn.dart';
import 'package:mvp_time/view/pages/home/widgets/home_tab_bar_widget.dart';
import 'package:mvp_time/view/pages/home/widgets/title_text_widget.dart';
import 'package:mvp_time/view/pages/home/widgets/today_task_list.dart';
import 'package:mvp_time/view/widgets/search_field_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if tab changed
    tabController.addListener(
      () {
        ref.read(tabIndexProvider.notifier).state = tabController.index;
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const TitleTextWidget(),
        actions: [
          NotificationIcBtn(
            onTap: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(
            double.infinity,
            context.height(ref.watch(tabIndexProvider) == 1 ? 146 : 60),
          ),
          child: Column(
            children: [
              // searchfield
              ref.watch(tabIndexProvider) == 1
                  ? SearchFieldWidget(
                      onChanged: (value) {},
                    )
                  : const SizedBox.shrink(),
              // height spacer
              WhiteSpacer()(context, height: 8),
              // tab bar
              HomeTabBarWidget(
                tabController: tabController,
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          // Content for the first tab
          TodayTasksList(),
          // Content for the second tab
          HistoryTasksList(),
        ],
      ),
    );
  }
}
