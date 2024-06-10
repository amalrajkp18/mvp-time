import 'package:flutter/material.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/utils/white_spacer.dart';

class AddTaskFieldWidget extends StatelessWidget {
  const AddTaskFieldWidget({
    super.key,
    required this.title,
    required this.textEditingController,
    this.dropTap,
    this.hintText,
  });

  final String title;
  final TextEditingController textEditingController;
  final void Function()? dropTap;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: context.height(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title text
          Text(
            title,
            style: context.typography.titleSemiBold.copyWith(
              color: AppColorPalette.grey550,
            ),
          ),
          // height spacer
          WhiteSpacer()(context, height: 8),
          // text input field
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: context.width(10),
                vertical: context.height(5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  context.width(10),
                ),
                borderSide: const BorderSide(
                  color: AppColorPalette.grey550,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  context.width(10),
                ),
                borderSide: const BorderSide(
                  color: AppColorPalette.grey550,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  context.width(10),
                ),
                borderSide: const BorderSide(
                  color: AppColorPalette.grey550,
                ),
              ),
              suffixIcon: dropTap != null
                  ? InkWell(
                      onTap: dropTap,
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        size: context.width(32),
                      ),
                    )
                  : null,
              hintText: hintText,
              hintStyle: context.typography.alertHintRegular.copyWith(
                color: AppColorPalette.grey550,
              ),
            ),
            maxLines: dropTap == null ? 3 : 1,
          ),
        ],
      ),
    );
  }
}
