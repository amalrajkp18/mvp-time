import 'package:flutter/material.dart';
import 'package:mvp_time/core/extension/string_extension.dart';
import 'package:mvp_time/core/theme/app_color_palette.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';

class PasswordEmailTextFiledWidget extends StatelessWidget {
  const PasswordEmailTextFiledWidget({
    super.key,
    required this.emailTextController,
    required this.hintText,
  });

  final TextEditingController emailTextController;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailTextController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please  enter an email';
        }
        if (!value.validateEmail()) {
          return 'Please enter a valid email';
        }

        return null;
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: context.width(20),
          vertical: context.height(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            context.width(10),
          ),
          borderSide: BorderSide(
            color: AppColorPalette.blue700.withOpacity(0.1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            context.width(10),
          ),
          borderSide: BorderSide(
            color: context.colors.primary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            context.width(10),
          ),
          borderSide: BorderSide(
            color: context.colors.primary,
          ),
        ),
        hintText: hintText,
        hintStyle: context.typography.alertHintRegular,
      ),
    );
  }
}
