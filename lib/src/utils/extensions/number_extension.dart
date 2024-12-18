import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NumExtension on num {
  SizedBox get boxWidth => SizedBox(width: w);

  SizedBox get boxHeight => SizedBox(height: h);

  double get l => math.max(w, h);

  double get m => math.min(w, h);

  String get formatToString =>
      this == toInt() ? toInt().toString() : toString();
}
