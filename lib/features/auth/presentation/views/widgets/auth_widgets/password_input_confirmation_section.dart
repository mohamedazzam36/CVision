import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_text_field_section.dart';
import 'package:flutter/cupertino.dart';

class PasswordInputConfirmationSection extends StatefulWidget {
  const PasswordInputConfirmationSection({
    super.key,
    this.currentNode,
    this.onSaved,
  });

  final FocusNode? currentNode;
  final void Function(String?)? onSaved;

  @override
  State<PasswordInputConfirmationSection> createState() => _PasswordInputConfirmationSectionState();
}

class _PasswordInputConfirmationSectionState extends State<PasswordInputConfirmationSection> {
  bool obscureText = true;
  late FocusNode currentNode;
  FocusNode nextNode = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    currentNode = widget.currentNode ?? FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    widget.currentNode ?? currentNode.dispose();
    nextNode.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAuthTextFieldSection(
          title: 'Password',
          hintText: 'Enter Your Password',
          isPassword: true,
          obscureText: obscureText,
          focusNode: currentNode,
          onIconPressed: () => setState(() => obscureText = !obscureText),
          onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(nextNode),
          onSaved: widget.onSaved,
          controller: passwordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Field can\'t be empty!';
            } else if (confirmPasswordController.text != passwordController.text) {
              return 'Please enter the same password!';
            } else {
              return null;
            }
          },
        ),
        const SizedBox(
          height: 12,
        ),
        CustomAuthTextFieldSection(
          title: 'Confirm Password',
          hintText: 'Confirm Password',
          isPassword: true,
          obscureText: obscureText,
          focusNode: nextNode,
          onIconPressed: () => setState(() => obscureText = !obscureText),
          textInputAction: TextInputAction.done,
          onSaved: widget.onSaved,
          controller: confirmPasswordController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Field can\'t be empty!';
            } else if (confirmPasswordController.text != passwordController.text) {
              return 'Please enter the same password!';
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
