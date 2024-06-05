import 'package:flutter/material.dart';

extension AppSizesExtension on BuildContext {
// height
  double height(double height) =>
      MediaQuery.sizeOf(this).height * (height / 932);

// width
  double width(double width) => MediaQuery.sizeOf(this).width * (width / 430);
}
