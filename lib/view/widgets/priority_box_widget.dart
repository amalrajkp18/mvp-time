import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class PriorityBoxWidget extends StatelessWidget {
  const PriorityBoxWidget({
    super.key,
    required this.txt,
  });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.width(6),
        vertical: context.height(6),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFD3D3D3),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // dot
          CircleAvatar(
            radius: context.width(3),
            backgroundColor: AppColorPalette.red500,
          ),
          // width spacer
          WhiteSpacer()(context, width: 6),
          // text
          Text(
            txt,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: context.width(11),
              fontWeight: FontWeight.w400,
              color: context.colors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
