import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/constants/account_page/account_page_constants.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/view/pages/account/widgets/dark_mode_widget.dart';
import 'package:mvp_time/view/pages/account/widgets/icon_text_widget.dart';
import 'package:mvp_time/view/pages/account/widgets/log_out_widget.dart';
import 'package:mvp_time/view/pages/account/widgets/password_field_widget.dart';
import 'package:mvp_time/view/pages/notification/notification_page.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width(24)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // height spacer
              WhiteSpacer()(context, height: 88),
              // user name
              Text(
                "Kyle Calica",
                style: context.typography.titleBold,
              ),
              // email
              Text(
                "nathan@mvp-apps.com",
                style: context.typography.bodyRegular.copyWith(
                  color: AppColorPalette.grey900,
                ),
              ),
              // height spacer
              WhiteSpacer()(context, height: 32),
              // password edit
              PasswordFieldWidget(),
              // height spacer
              WhiteSpacer()(context, height: 16),
              // activity field
              Container(
                width: double.infinity,
                height: context.height(216),
                padding: EdgeInsets.symmetric(
                  horizontal: context.width(16),
                  vertical: context.height(20),
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
                  children: [
                    // notification
                    InkWell(
                      onTap: () {
                        // page routing
                        Navigator.pushNamed(
                          context,
                          NotificationPage.routeName,
                        );
                      },
                      child: IconTextWidget(
                        icon: ref.watch(iconConstantsProvider).icNotification,
                        text: ref
                            .watch(accountPageConstantsProvider)
                            .txtNotification,
                      ),
                    ),
                    // horizontal line
                    const Divider(
                      color: AppColorPalette.grey100,
                    ),
                    // height spacer
                    WhiteSpacer()(context, height: 8),
                    // dark mode
                    const DarkModeWidget(),
                    // horizontal line
                    const Divider(
                      color: AppColorPalette.grey100,
                    ),
                    // height spacer
                    WhiteSpacer()(context, height: 8),
                    //log out
                    const LogOutWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
