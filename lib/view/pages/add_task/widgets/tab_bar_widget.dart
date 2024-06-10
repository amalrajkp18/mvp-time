import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/controller/calendar/calendar_provider.dart';
import 'package:mvp_time/core/constants/add_task_page/add_task_sheet_constants.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/view/pages/add_task/widgets/tab_btn_widget.dart';

class TabBarWidget extends ConsumerWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        // yesterday btn
        TabBtnWidget(
          text: ref.watch(addTaskSheetConstantsProvider).txtyesterDay,
          onPressed: () {},
        ),
        // width spacer
        const Spacer(flex: 1),
        // today btn
        TabBtnWidget(
          isFilled: true,
          text: ref.watch(addTaskSheetConstantsProvider).txtToday,
          onPressed: () {},
        ),
        // width spacer
        const Spacer(flex: 1),
        // tommorow btn
        TabBtnWidget(
          text: ref.watch(addTaskSheetConstantsProvider).txtTomorrow,
          onPressed: () {},
        ),
        // width spacer
        const Spacer(flex: 4),
        // calender icon
        InkWell(
          onTap: () {
            // calender is shown or not
            ref.read(calendarProvider.notifier).state =
                !ref.read(calendarProvider);
          },
          child: SvgPicture.asset(
            ref.watch(iconConstantsProvider).icCalender,
          ),
        )
      ],
    );
  }
}
