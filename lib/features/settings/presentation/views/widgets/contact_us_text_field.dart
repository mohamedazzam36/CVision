import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContactUsTextField extends StatelessWidget {
  const ContactUsTextField({
    super.key,
    required this.hintText,
    this.onSaved,
    this.maxLines = 1,
    this.initialValue,
    this.hintStyle,
    this.canEdit = true,
  });

  final String hintText;
  final void Function(String?)? onSaved;
  final int maxLines;
  final String? initialValue;
  final TextStyle? hintStyle;
  final bool canEdit;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: !canEdit,
      initialValue: initialValue,
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field can\'t be empty!';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsetsDirectional.only(start: 16, top: 32),
        hintStyle: hintStyle ?? Styles.styleRegular12(context).copyWith(fontSize: 12),
        fillColor: canEdit ? AppColors.secondaryColor : const Color(0xffBEB4C0),
        filled: true,
        enabledBorder: _buildBorder(
          const Color(0xffE6E8EB),
        ),
        focusedBorder: _buildBorder(AppColors.primaryColor),
        errorBorder: _buildBorder(Colors.red),
        focusedErrorBorder: _buildBorder(Colors.red),
      ),
    );
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: canEdit ? 2 : 0),
    );
  }
}
