import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/controller/calendar/calendar_provider.dart';
import 'package:mvp_time/controller/count/count_provider.dart';
import 'package:mvp_time/core/constants/add_task_page/add_task_sheet_constants.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_close_btn_widget.dart';
import 'package:mvp_time/core/widgets/app_main_btn_widget.dart';
import 'package:mvp_time/view/pages/add_task/widgets/add_task_field_widget.dart';
import 'package:mvp_time/view/pages/add_task/widgets/calendar_widget.dart';
import 'package:mvp_time/view/pages/add_task/widgets/count_ctrl_widget.dart';
import 'package:mvp_time/view/pages/add_task/widgets/tab_bar_widget.dart';

class AddTaskSheet extends HookConsumerWidget {
  const AddTaskSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // project textfield
    final projectTextController = useTextEditingController();
    final taskTextController = useTextEditingController();

    return Container(
      width: double.infinity,
      height: context.height(859),
      padding: EdgeInsets.symmetric(
        horizontal: context.width(20),
      ),
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.width(8)),
          topRight: Radius.circular(context.width(8)),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.height(20)),
              child: const AppCloseBtnWidget(),
            ),
            // title
            Text(
              ref.watch(addTaskSheetConstantsProvider).txtHead,
              style: context.typography.titleBold,
            ),
            // height spacer
            WhiteSpacer()(context, height: 20),
            // btns
            const TabBarWidget(),
            // height spacer
            WhiteSpacer()(context, height: 28),
            // calendar
            CalendarWidget(
              onDaySelected: (selectedDay, focusedDay) {},
            ),
            // project  input field
            AddTaskFieldWidget(
              title: ref.watch(addTaskSheetConstantsProvider).txtProject,
              textEditingController: projectTextController,
              dropTap: () {},
            ),
            //task  input field
            AddTaskFieldWidget(
              title: ref.watch(addTaskSheetConstantsProvider).txtTask,
              textEditingController: taskTextController,
              dropTap: () {},
            ),
            //description input field
            AddTaskFieldWidget(
              title:
                  ref.watch(addTaskSheetConstantsProvider).txtTaskDescription,
              textEditingController: taskTextController,
              hintText:
                  ref.watch(addTaskSheetConstantsProvider).txtDescriptionHint,
            ),
            //select hours count ctrl
            CountCtrlWidget(
              title: ref.watch(addTaskSheetConstantsProvider).txtSelectHours,
              count: ref.watch(selectedHoursCountProvider),
              decrementTap: () {
                if (ref.read(selectedHoursCountProvider) > 0) {
                  ref.read(selectedHoursCountProvider.notifier).state--;
                }
              },
              incrementTap: () {
                ref.read(selectedHoursCountProvider.notifier).state++;
              },
            ),
            // height spacer
            WhiteSpacer()(context, height: 16),
            //task point count ctrl
            CountCtrlWidget(
              title: ref.watch(addTaskSheetConstantsProvider).txtTaskPoints,
              count: ref.watch(taskPointsCountProvider),
              decrementTap: () {
                if (ref.read(taskPointsCountProvider) > 0) {
                  ref.read(taskPointsCountProvider.notifier).state--;
                }
              },
              incrementTap: () {
                ref.read(taskPointsCountProvider.notifier).state++;
              },
            ),
            // height spacer
            WhiteSpacer()(context,
                height: ref.watch(calendarProvider) ? 24 : 64),
            // create btn
            AppMainBtnWidget(
              text: ref.watch(addTaskSheetConstantsProvider).txtBtn,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
