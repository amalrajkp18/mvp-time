import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class AppBackBtnWidget extends ConsumerWidget {
  const AppBackBtnWidget({
    super.key,
    required this.onTap,
  });
  final void Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(context.width(30)),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: context.width(30),
        child: SvgPicture.asset(
          ref.watch(iconConstantsProvider).icArrowBack,
        ),
      ),
    );
  }
}
