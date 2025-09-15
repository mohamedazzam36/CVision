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

  void popTimes(int count) {
    int popped = 0;
    Navigator.popUntil(this, (_) => popped++ >= count);
  }

  void pushAbove(String baseRouteName, Widget newScreen) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(
        builder: (context) => newScreen,
      ),
      (route) => route.settings.name == baseRouteName,
    );
  }
}
