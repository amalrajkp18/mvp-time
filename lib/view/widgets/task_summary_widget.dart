import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/constants/projects_page/projects_page_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/view/widgets/progress_widget.dart';
import 'package:mvp_time/view/widgets/task_status_headtxt_widget.dart';

class TaskSummaryWidget extends ConsumerWidget {
  const TaskSummaryWidget({
    super.key,
    required this.percentage,
    required this.title,
    required this.subTxt,
    required this.progrees,
    required this.imageList,
    required this.onTap,
    this.image,
    this.isBused,
  });
  final String percentage;
  final String title;
  final String subTxt;
  final double progrees;
  final bool? isBused;
  final List<String> imageList;
  final String? image;
  final void Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(
        context.width(8),
      ),
      child: Container(
        width: double.infinity,
        height: context.height(isBused == null ? 216 : 240),
        padding: EdgeInsets.symmetric(
          horizontal: context.width(14),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image
                image != null
                    ? Container(
                        width: context.width(36),
                        height: context.height(38),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            context.width(40),
                          ),
                          border: Border.all(
                            color: const Color(0xFFDFDFDF),
                            width: 1,
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              image!,
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                // width space
                image != null
                    ? WhiteSpacer()(context, width: 16)
                    : const SizedBox.shrink(),
                // title
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: context.width(14),
                    fontWeight: FontWeight.w500,
                    color: context.colors.primary,
                  ),
                ),
                // width spacer
                const Spacer(),
                // icon more
                SvgPicture.asset(
                  ref.watch(iconConstantsProvider).icMoreVert,
                  width: context.width(26),
                )
              ],
            ),
            // height spacer
            WhiteSpacer()(context, height: 10),
            // sub text
            Text(
              subTxt,
              style: context.typography.bodyLight,
            ),
            // height spacer
            WhiteSpacer()(context, height: 10),
            //stacked users profile
            Stack(
              children: [
                SizedBox(
                  width: context.width(130),
                  height: context.height(64),
                ),
                for (int i = 0; i <= imageList.length; i++)
                  Positioned(
                    left: i * context.width(20),
                    child: i == imageList.length
                        ? CircleAvatar(
                            radius: context.width(16),
                            backgroundColor: const Color(0xFFE8E8E8),
                            child: Text(
                              ref
                                  .watch(projectsPageConstantsProvider)
                                  .txtTwoPlus,
                              style: context.typography.bodyLight.copyWith(
                                color: context.colors.primary,
                              ),
                            ),
                          )
                        : CircleAvatar(
                            radius: context.width(16),
                            backgroundImage: AssetImage(
                              imageList[i],
                            ),
                          ),
                  )
              ],
            ),
            //task status
            isBused == null
                ? const SizedBox.shrink()
                : TaskStatusHeadTxtWidget(isBused: isBused ?? false),
            // height spacer
            WhiteSpacer()(context, height: 10),
            // progress text
            ProgressWidget(percentage: percentage, progrees: progrees)
          ],
        ),
      ),
    );
  }
}
