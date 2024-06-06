import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: context.height(6),
        left: context.width(10),
      ),
      child: Row(
        children: [
          // icon
          SvgPicture.asset(
            icon,
            width: context.width(32),
            height: context.height(32),
          ),
          // width spacer
          WhiteSpacer()(context, width: 16),
          // text
          Text(
            text,
            style: context.typography.bodyMedium,
          )
        ],
      ),
    );
  }
}
