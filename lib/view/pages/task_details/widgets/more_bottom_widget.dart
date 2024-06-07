import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/constants/task_details_page/task_details_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_close_btn_widget.dart';
import 'package:mvp_time/view/pages/task_details/widgets/horizontal_divider_widget.dart';
import 'package:mvp_time/view/pages/task_details/widgets/task_txt_ic_btn_widget.dart';

moreBottomWidget(BuildContext context, WidgetRef ref) {
  return showModalBottomSheet(
    isDismissible: false,
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.only(
        top: context.height(16),
        right: context.width(16),
        bottom: context.height(28),
        left: context.width(28),
      ),
      width: double.infinity,
      height: context.height(278),
      decoration: BoxDecoration(
        color: AppColorPalette.white100,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            context.width(8),
          ),
          topRight: Radius.circular(
            context.width(8),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // close btn
          const Align(
            alignment: Alignment.centerRight,
            child: AppCloseBtnWidget(),
          ),
          // height spacer
          WhiteSpacer()(context, height: 18),
          // edit
          TaskTxtIcBtnWidget(
            onTap: () {},
            icon: ref.watch(iconConstantsProvider).icEdit,
            text: ref.watch(taskDetailsConstantsProvider).txtEditTask,
          ),
          // divider
          const HorizontalDividerWidget(),
          // duplicate
          TaskTxtIcBtnWidget(
            onTap: () {},
            icon: ref.watch(iconConstantsProvider).icCopy,
            text: ref.watch(taskDetailsConstantsProvider).txtDuplicateTask,
          ),
          // divider
          const HorizontalDividerWidget(),
          // delete
          TaskTxtIcBtnWidget(
            onTap: () {},
            isDelete: true,
            icon: ref.watch(iconConstantsProvider).icDelete,
            text: ref.watch(taskDetailsConstantsProvider).txtDeleteTask,
          ),
        ],
      ),
    ),
  );
}
