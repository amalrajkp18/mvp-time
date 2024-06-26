import 'package:flutter/material.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

// white spacer
final class WhiteSpacer {
  Widget call(BuildContext context, {double? width, double? height}) {
    return SizedBox(
      height: height != null ? context.height(height) : 0,
      width: width != null ? context.width(width) : 0,
    );
  }
}
