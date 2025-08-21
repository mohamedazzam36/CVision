import 'package:flutter/material.dart';

extension ScreenSizw on BuildContext {
  double get width {
    return MediaQuery.sizeOf(this).width;
  }

  double get height {
    return MediaQuery.sizeOf(this).height;
  }
}
