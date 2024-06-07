import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class TaskTxtIcBtnWidget extends StatelessWidget {
  const TaskTxtIcBtnWidget({
    super.key,
    required this.icon,
    required this.text,
    this.isDelete = false,
    required this.onTap,
  });
  final String icon;
  final String text;
  final bool isDelete;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // icon
          SvgPicture.asset(
            icon,
            width: context.width(24),
          ),
          // width spacer
          WhiteSpacer()(context, width: 18),
          // text
          Text(
            text,
            style: context.typography.btnRegular.copyWith(
              color: isDelete ? AppColorPalette.red500 : null,
            ),
          )
        ],
      ),
    );
  }
}
