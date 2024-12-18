import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get verticalViewPadding => MediaQuery.viewPaddingOf(this).vertical;

  double get bottomScreenPadding => MediaQuery.viewPaddingOf(this).bottom;

  double get topScreenPadding => MediaQuery.viewPaddingOf(this).top;

  Size get queryScreenSize => MediaQuery.sizeOf(this);

  double get screenHeight => queryScreenSize.height;

  double get screenWidth => queryScreenSize.width;

  ThemeData get theme => Theme.of(this);

  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;
}
