import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);
  EdgeInsets get padding => MediaQuery.paddingOf(this);

  Orientation get orientation => MediaQuery.orientationOf(this);
  bool get isLandScape => orientation == Orientation.landscape;
  bool get isPortrait => orientation == Orientation.portrait;
}
