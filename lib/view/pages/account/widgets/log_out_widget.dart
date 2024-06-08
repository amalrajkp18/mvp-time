import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/constants/account_page/account_page_constants.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/utils/app_alert_box.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_main_btn_widget.dart';
import 'package:mvp_time/view/pages/account/widgets/icon_text_widget.dart';
import 'package:mvp_time/view/pages/login/login_page.dart';

class LogOutWidget extends ConsumerWidget {
  const LogOutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        appAlertBox(
          context,
          ref,
          titleText: ref.watch(accountPageConstantsProvider).txtLogout,
          contentText: ref.watch(accountPageConstantsProvider).txtLogoutSub,
          widget: Column(
            children: [
              // height spacer
              WhiteSpacer()(context, height: 29),
              // btn yes
              AppMainBtnWidget(
                text: ref.watch(accountPageConstantsProvider).txtBtnYes,
                onPressed: () {
                  //TODO: logout functionalitie
                  Navigator.pushReplacementNamed(
                    context,
                    LoginPage.routeName,
                  );
                },
              ),
              // height spacer
              WhiteSpacer()(context, height: 12),
              // btn no
              AppMainBtnWidget(
                isOutlined: true,
                text: ref.watch(accountPageConstantsProvider).txtBtnNo,
                onPressed: () {
                  // close window
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
      child: IconTextWidget(
        icon: ref.watch(iconConstantsProvider).icLogOut,
        text: ref.watch(accountPageConstantsProvider).txtLogout,
      ),
    );
  }
}
