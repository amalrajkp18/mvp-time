import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/constants/task_details_page/task_details_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_back_btn_widget.dart';
import 'package:mvp_time/view/pages/task_details/widgets/more_bottom_widget.dart';
import 'package:mvp_time/view/pages/task_details/widgets/start_txt_widget.dart';

class TaskDetailsPage extends ConsumerWidget {
  const TaskDetailsPage({super.key});

  static const routeName = "/taskDetails";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Retrieve the arguments
    final Map<String, String> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        leading: AppBackBtnWidget(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          // icon more
          InkWell(
            borderRadius: BorderRadius.circular(context.width(40)),
            onTap: () {
              moreBottomWidget(context, ref);
            },
            child: SvgPicture.asset(
              ref.watch(iconConstantsProvider).icMoreVert,
              width: context.width(32),
            ),
          ),
          //width spacer
          WhiteSpacer()(context, width: 14)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // height spacer
            WhiteSpacer()(context, height: 20),
            // label name
            Text(
              ref.watch(taskDetailsConstantsProvider).txtProjectName,
              style: context.typography.labelRegular,
            ),
            // headtxt
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.height(12)),
              child: Text(
                args["projectName"] ?? "",
                style: context.typography.bodySemibold,
              ),
            ),
            // horizontal line
            const Divider(color: AppColorPalette.grey200),
            // height spacer
            WhiteSpacer()(context, height: 16),
            // label details
            Text(
              ref.watch(taskDetailsConstantsProvider).txtTaskDetails,
              style: context.typography.labelRegular,
            ),
            //deatils txt
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.height(12)),
              child: Text(
                args["taskDeatails"] ?? "",
                style: context.typography.bodyMedium.copyWith(
                  fontSize: context.width(17),
                  color: context.colors.primary,
                ),
              ),
            ),
            // horizontal line
            const Divider(color: AppColorPalette.grey200),
            // height spacer
            WhiteSpacer()(context, height: 16),
            // desc
            Text(
              ref.watch(taskDetailsConstantsProvider).txtDescription,
              style: context.typography.labelRegular,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.height(12)),
              child: Text(
                args["description"] ?? "",
                style: context.typography.bodyMedium.copyWith(
                  fontSize: context.width(14),
                  color: context.colors.primary,
                ),
              ),
            ),
            // horizontal line
            const Divider(color: AppColorPalette.grey200),
            Row(
              children: [
                // width spacer
                const Spacer(flex: 1),
                // date
                StartTextWidget(
                  labelText:
                      ref.watch(taskDetailsConstantsProvider).txtStartDate,
                  text: args["date"] ?? "",
                ),
                // width spacer
                const Spacer(flex: 2),
                // time
                StartTextWidget(
                  labelText:
                      ref.watch(taskDetailsConstantsProvider).txtStartTime,
                  text: args["time"] ?? "",
                ),
                // width spacer
                const Spacer(flex: 1),
              ],
            ),
            // horizontal line
            const Divider(color: AppColorPalette.grey200),
          ],
        ),
      ),
    );
  }
}
