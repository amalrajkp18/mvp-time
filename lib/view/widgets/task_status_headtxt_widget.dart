import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/core/constants/projects_page/projects_page_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/view/widgets/priority_box_widget.dart';

class TaskStatusHeadTxtWidget extends ConsumerWidget {
  const TaskStatusHeadTxtWidget({
    super.key,
    required this.isBused,
  });

  final bool isBused;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // btn prority
        PriorityBoxWidget(
          txt: ref.watch(projectsPageConstantsProvider).txtHighPriority,
        ),
        //text status
        Text(
          isBused
              ? ref.watch(projectsPageConstantsProvider).txtBused
              : ref.watch(projectsPageConstantsProvider).txtPending,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: context.width(11),
            fontWeight: FontWeight.w500,
            color:
                isBused ? AppColorPalette.green700 : AppColorPalette.orange600,
          ),
        )
      ],
    );
  }
}
