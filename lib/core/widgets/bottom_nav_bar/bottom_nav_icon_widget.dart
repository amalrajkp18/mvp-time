import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class BottomNavIconWidget extends StatelessWidget {
  const BottomNavIconWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });
  final String icon;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // icon
        SvgPicture.asset(
          icon,
          width: context.width(34),
          height: context.height(34),
          color: color,
        ),
        // spacer
        WhiteSpacer()(context, height: 4),
        // text
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: context.width(10),
            fontWeight: FontWeight.w600,
            color: color,
          ),
        )
      ],
    );
  }
}
