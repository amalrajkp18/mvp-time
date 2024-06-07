import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class HorizontalDividerWidget extends StatelessWidget {
  const HorizontalDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.height(16),
      ),
      child: SizedBox(
        width: context.width(350),
        child: const Divider(
          color: AppColorPalette.black150,
        ),
      ),
    );
  }
}
