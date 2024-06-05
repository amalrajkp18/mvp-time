import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'icon_constants.g.dart';

final class IconConstants {
  static const String basePath = "assets/icons/ic_";

  final String icArrowBack = "${basePath}arrow_back.svg";
  final String icCalender = "${basePath}calendar.svg";
  final String icClose = "${basePath}close.svg";
  final String icCopy = "${basePath}copy.svg";
  final String icDarkMode = "${basePath}dark_mode.svg";
  final String icDelete = "${basePath}delete.svg";
  final String icEdit = "${basePath}edit.svg";
  final String icFolder = "${basePath}folder.svg";
  final String icHome = "${basePath}home.svg";
  final String icLogOut = "${basePath}log_out.svg";
  final String icMoreVert = "${basePath}more_vert.svg";
  final String icNotification = "${basePath}notification.svg";
  final String icTimeLine = "${basePath}timeline.svg";
  final String icProfileCircle = "${basePath}profile_circle.svg";
}

@riverpod
IconConstants iconConstants(IconConstantsRef ref) {
  return IconConstants();
}
