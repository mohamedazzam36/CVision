import 'package:cvision/core/utils/app_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomAuthTextField extends StatefulWidget {
  const CustomAuthTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
  });

  final String hintText;
  final bool isPassword;

  @override
  State<CustomAuthTextField> createState() => _CustomAuthTextFieldState();
}

class _CustomAuthTextFieldState extends State<CustomAuthTextField> {
  late bool obscureText;
  @override
  void initState() {
    obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field can\'t be empty!'.tr();
        } else {
          return null;
        }
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsetsDirectional.only(start: 16),
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? Padding(
                padding: const EdgeInsetsDirectional.only(end: 6),
                child: FittedBox(
                  child: IconButton(
                    onPressed: () => setState(() => obscureText = !obscureText),
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
              )
            : null,
        hintStyle: Styles.styleRegular12(context),
        enabledBorder: buildNormalBorder(),
        focusedBorder: buildNormalBorder(),
        errorBorder: buildErrorBorder(),
        focusedErrorBorder: buildErrorBorder(),
      ),
    );
  }

  OutlineInputBorder buildNormalBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Color(0xff929090)),
    );
  }

  OutlineInputBorder buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.red),
    );
  }
}
