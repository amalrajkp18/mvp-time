import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvp_time/core/constants/projects_page/projects_page_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class ProgressWidget extends ConsumerWidget {
  const ProgressWidget({
    super.key,
    required this.percentage,
    required this.progrees,
  });

  final String percentage;
  final double progrees;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // txt
            Text(
              ref.watch(projectsPageConstantsProvider).txtProgress,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: context.width(12),
                fontWeight: FontWeight.w400,
                color: const Color(0xFF787878),
              ),
            ),
            // percentange
            Text(
              percentage,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: context.width(12),
                fontWeight: FontWeight.w400,
                color: const Color(0xFF787878),
              ),
            )
          ],
        ),
        // height spacer
        WhiteSpacer()(context, height: 4),
        // progress bar
        LinearProgressIndicator(
          color: AppColorPalette.black500,
          borderRadius: BorderRadius.circular(
            context.width(8),
          ),
          value: progrees,
        ),
      ],
    );
  }
}
