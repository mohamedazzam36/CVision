import 'package:flutter/material.dart';

extension ContextHelper on BuildContext {
  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  double get height {
    return MediaQuery.sizeOf(this).height;
  }

  void navigate(Widget screen) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void navigateReplace(Widget screen) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
