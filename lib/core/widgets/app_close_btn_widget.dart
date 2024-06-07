import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';

class AppCloseBtnWidget extends ConsumerWidget {
  const AppCloseBtnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        // close
        Navigator.pop(context);
      },
      child: SvgPicture.asset(
        ref.watch(iconConstantsProvider).icClose,
      ),
    );
  }
}
