import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_text_field_section.dart';
import 'package:flutter/cupertino.dart';

class PasswordInputSection extends StatefulWidget {
  const PasswordInputSection({
    super.key,
    required this.currentNode,
    this.onSaved,
  });
  final FocusNode currentNode;
  final void Function(String?)? onSaved;

  @override
  State<PasswordInputSection> createState() => _PasswordInputSectionState();
}

class _PasswordInputSectionState extends State<PasswordInputSection> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomAuthTextFieldSection(
      title: 'Password',
      hintText: 'Enter Your Password',
      isPassword: true,
      obscureText: obscureText,
      onIconPressed: () => setState(() => obscureText = !obscureText),
      focusNode: widget.currentNode,
      textInputAction: TextInputAction.done,
      onSaved: widget.onSaved,
    );
  }
}
