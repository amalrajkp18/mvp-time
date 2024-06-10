import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp_time/core/constants/icons_constants/icon_constants.dart';
import 'package:mvp_time/core/constants/projects_page/projects_page_constants.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class SearchFieldWidget extends ConsumerWidget {
  const SearchFieldWidget({
    super.key,
    required this.onChanged,
  });

  final void Function(String value) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: context.width(387),
      child: TextField(
        onChanged: onChanged,
        cursorColor: context.colors.primary,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.width(8),
            vertical: context.height(16),
          ),
          fillColor: AppColorPalette.grey50,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              context.width(12),
            ),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              context.width(12),
            ),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              context.width(12),
            ),
            borderSide: BorderSide(
              color: context.colors.primary,
              width: 1,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width(14)),
            child: SvgPicture.asset(
              ref.watch(iconConstantsProvider).icSearch,
            ),
          ),
          hintText: ref.watch(projectsPageConstantsProvider).txtSearchFieldHint,
          hintStyle: context.typography.hintRegular.copyWith(
            color: AppColorPalette.grey700,
          ),
        ),
      ),
    );
  }
}
