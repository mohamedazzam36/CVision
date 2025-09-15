import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAuthTextField extends StatelessWidget {
  const CustomAuthTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.obscureText = false,
    this.onIconPressed,
    this.focusNode,
    this.textInputAction,
    this.onFieldSubmitted,
    this.validator,
    this.onSaved,
    this.controller,
    this.prefixIcon,
    this.initialValue,
  });

  final String hintText;
  final bool isPassword;
  final bool obscureText;
  final void Function()? onIconPressed;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      controller: controller,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText,
      focusNode: focusNode,
      textInputAction: textInputAction,
      validator:
          validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Field can\'t be empty!';
            } else {
              return null;
            }
          },
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsetsDirectional.only(start: 16),
        prefixIcon: prefixIcon,
        suffixIcon: isPassword
            ? Padding(
                padding: const EdgeInsetsDirectional.only(end: 6),
                child: FittedBox(
                  child: IconButton(
                    onPressed: onIconPressed,
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
              )
            : null,
        hintStyle: Styles.styleRegular12(context).copyWith(fontSize: 12),
        enabledBorder: _buildBorder(const Color(0xff929090)),
        focusedBorder: _buildBorder(AppColors.lightThemePrimaryColor),
        errorBorder: _buildBorder(Colors.red),
        focusedErrorBorder: _buildBorder(Colors.red),
      ),
    );
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color),
    );
  }
}
