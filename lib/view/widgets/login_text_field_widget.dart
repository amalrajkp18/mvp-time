import 'package:flutter/material.dart';
import 'package:mvp_time/core/utils/app_sizes.dart';
import 'package:mvp_time/core/theme/extension/app_theme_extension.dart';

class LoginTextFieldWidget extends StatelessWidget {
  const LoginTextFieldWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.validator,
  });

  final TextEditingController textEditingController;
  final String hintText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
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
            color: context.colors.border,
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
        hintText: hintText,
        hintStyle: context.typography.hintRegular,
      ),
    );
  }
}
