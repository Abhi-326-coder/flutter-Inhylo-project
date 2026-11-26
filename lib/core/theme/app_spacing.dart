import 'package:flutter/widgets.dart';

abstract final class AppSpacing {
  static const xxs = 4.0;
  static const xs = 8.0;
  static const sm = 12.0;
  static const md = 16.0;
  static const lg = 20.0;
  static const xl = 24.0;
  static const xxl = 32.0;
  static const xxxl = 40.0;
  static const sectionSm = 48.0;
  static const section = 64.0;
  static const sectionLg = 96.0;
  static const hero = 120.0;

  static const pageGutter = EdgeInsets.symmetric(horizontal: md, vertical: lg);
}

abstract final class AppRadius {
  static const xs = 4.0;
  static const sm = 6.0;
  static const md = 8.0;
  static const lg = 12.0;
  static const xl = 16.0;
  static const xxl = 20.0;
  static const xxxl = 24.0;
  static const full = 9999.0;
}
