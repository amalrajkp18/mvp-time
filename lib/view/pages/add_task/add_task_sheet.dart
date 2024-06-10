import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/controller/calendar/calendar_provider.dart';
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
import 'package:mvp_time/view/pages/task_details/task_details_page.dart';

class AddTaskSheet extends HookConsumerWidget {
  const AddTaskSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // project text controller
    final projectTextController = useTextEditingController();
    // task text controller
    final taskTextController = useTextEditingController();

    // hours count
    final selectedHoursCount = useState<int>(0);
    //point count
    final taskPointsCountProvider = useState<int>(0);

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
            const AddTaskTabBarBtns(),
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
              count: selectedHoursCount.value,
              decrementTap: () {
                if (selectedHoursCount.value > 0) {
                  selectedHoursCount.value++;
                }
              },
              incrementTap: () {
                selectedHoursCount.value++;
              },
            ),
            // height spacer
            WhiteSpacer()(context, height: 16),
            //task point count ctrl
            CountCtrlWidget(
              title: ref.watch(addTaskSheetConstantsProvider).txtTaskPoints,
              count: taskPointsCountProvider.value,
              decrementTap: () {
                if (taskPointsCountProvider.value > 0) {
                  taskPointsCountProvider.value--;
                }
              },
              incrementTap: () {
                taskPointsCountProvider.value++;
              },
            ),
            // height spacer
            WhiteSpacer()(context,
                height: ref.watch(calendarProvider) ? 28 : 42),
            // create btn
            AppMainBtnWidget(
              text: ref.watch(addTaskSheetConstantsProvider).txtBtn,
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  TaskDetailsPage.routeName,
                  arguments: {
                    "projectName": "Mvp Task manager",
                    "taskDeatails": "Design Task management App ",
                    "description":
                        "Design Task management App  Design Task management App  Design Task management App  Design Task management App  Design Task",
                    "points": "20",
                    "hours": "10",
                    "approved": "Ali",
                  },
                );
              },
            ),
            // height spacer
            WhiteSpacer()(context, height: 12),
          ],
        ),
      ),
    );
  }
}
