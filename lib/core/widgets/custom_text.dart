import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    super.key,
    required this.style,
    this.alignment = Alignment.center,
    this.fit = BoxFit.scaleDown,
  });

  final String text;
  final TextStyle style;
  final AlignmentGeometry? alignment;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: alignment!,
      fit: fit!,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
