import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/constants/account_page/account_page_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_alert_box.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_main_btn_widget.dart';
import 'package:mvp_time/view/pages/account/widgets/password_email_text_field_widget.dart';

class PasswordFieldWidget extends HookConsumerWidget {
  PasswordFieldWidget({
    super.key,
  });
  // formkey
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // email textfield controller
    final emailTextController = useTextEditingController();

    return InkWell(
      onTap: () {
        appAlertBox(
          context,
          ref,
          titleText: ref.watch(accountPageConstantsProvider).txtEditPassword,
          contentText:
              ref.watch(accountPageConstantsProvider).txtEditPasswordSub,
          widget: Form(
            key: formKey,
            child: Column(
              children: [
                // height spacer
                WhiteSpacer()(context, height: 32),
                // email field
                PasswordEmailTextFiledWidget(
                  emailTextController: emailTextController,
                  hintText: ref.watch(accountPageConstantsProvider).txtEmail,
                ),
                // height spacer
                WhiteSpacer()(context, height: 32),
                // btn
                AppMainBtnWidget(
                  text: ref.watch(accountPageConstantsProvider).txtBtnSubmit,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // TODO: implement reset password
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: context.height(18),
          right: context.width(16),
          bottom: context.height(16),
          left: context.width(16),
        ),
        decoration: BoxDecoration(
          color: context.colors.secondary,
          borderRadius: BorderRadius.circular(context.width(12)),
          boxShadow: [
            BoxShadow(
              color: AppColorPalette.blueGrey200..withOpacity(0.25),
              blurRadius: 40,
              spreadRadius: -4,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // password
                Text(
                  ref.watch(accountPageConstantsProvider).txtPassword,
                  style: context.typography.titleSemiBold,
                ),
                // edit
                Text(
                  ref.watch(accountPageConstantsProvider).txtEdit,
                  style: context.typography.titleMedium,
                ),
              ],
            ),
            // heigh spacer
            WhiteSpacer()(context, height: 10),
            // stared password
            Text(
              ref.watch(accountPageConstantsProvider).txtStar,
              style: context.typography.bodyRegular,
            )
          ],
        ),
      ),
    );
  }
}
