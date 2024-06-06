import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/constants/account_page/account_page_constants.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/view/pages/account/widgets/custom_switch.dart';
import 'package:mvp_time/view/pages/account/widgets/icon_text_widget.dart';

class DarkModeWidget extends HookConsumerWidget {
  const DarkModeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = useState<bool>(false);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // icons
        IconTextWidget(
          icon: ref.watch(iconConstantsProvider).icDarkMode,
          text: ref.watch(accountPageConstantsProvider).txtDarkMode,
        ),
        // switch btn
        CustomSwitch(
          value: isDark.value,
          onChanged: (value) {
            // Handle dark/light theme state change
            isDark.value = value;
          },
          thumbSize: context.width(22),
          activeColor: AppColorPalette.black350,
          inactiveColor: const Color(0xFFF1F1F1),
          thumbColor: Colors.white,
        ),
      ],
    );
  }
}
