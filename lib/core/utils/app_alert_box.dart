import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/widgets/app_close_btn_widget.dart';

appAlertBox(
  BuildContext context,
  WidgetRef ref, {
  required String titleText,
  required String contentText,
  required Widget widget,
}) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: context.colors.secondary,
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          context.width(10),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: context.width(30),
        vertical: context.height(30),
      ),
      title: Row(
        children: [
          // width spacer
          const Spacer(flex: 4),
          //title text
          Text(
            titleText,
            style: context.typography.alertTitleMedium,
            textAlign: TextAlign.center,
          ),
          // width spacer
          const Spacer(flex: 3),
          // icon close
          const AppCloseBtnWidget()
        ],
      ),
      actions: [
        Text(
          contentText,
          style: context.typography.alertContentRegular,
          textAlign: TextAlign.center,
        ),
        widget,
      ],
      actionsAlignment: MainAxisAlignment.center,
    ),
  );
}
