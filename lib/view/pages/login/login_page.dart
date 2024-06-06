import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/constants/image_constants/image_constants.dart';
import 'package:mvp_time/core/constants/login_page/login_page_constants.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';
import 'package:mvp_time/core/widgets/app_main_button_widget.dart';
import 'package:mvp_time/view/widgets/login_text_field_widget.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // email textfield controller
    final emailTextController = useTextEditingController();
    // password textfield controller
    final passwordTextController = useTextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width(46),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // height spacer
            const Spacer(flex: 1),
            // logo
            Center(
              child: Image.asset(
                ref.watch(imageConstantsProvider).imgMvpLogo,
                width: context.width(172),
              ),
            ),
            // height spacer
            WhiteSpacer()(context, height: 120),
            // title
            Text(
              ref.watch(loginPageConstantsProvider).txtTitle,
              style: context.typography.titleBold,
            ),
            // height spacer
            WhiteSpacer()(context, height: 6),
            // subtxt
            Text(
              ref.watch(loginPageConstantsProvider).txtSub,
              style: context.typography.bodyRegular,
            ),
            // height spacer
            WhiteSpacer()(context, height: 24),
            // email field
            LoginTextFieldWidget(
              textEditingController: emailTextController,
              hintText: ref.watch(loginPageConstantsProvider).txtEmail,
            ),
            // height spacer
            WhiteSpacer()(context, height: 26),
            // password field
            LoginTextFieldWidget(
              textEditingController: passwordTextController,
              hintText: ref.watch(loginPageConstantsProvider).txtPassword,
            ),
            // height spacer
            WhiteSpacer()(context, height: 44),
            // button
            AppMainButtonWidget(
              onPressed: () {},
              text: ref.watch(loginPageConstantsProvider).txtBtn,
            ),
            // height spacer
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
