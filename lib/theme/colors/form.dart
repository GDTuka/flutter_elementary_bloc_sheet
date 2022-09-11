import 'package:flutter/material.dart';

class FormColors {
  // ********** FORMS ***********
  FormColors({
    required this.inactiveGrey,
  });

  factory FormColors.dark() => FormColors(
        inactiveGrey: const Color(0xFF858585),
      );

  factory FormColors.light() => FormColors(
        inactiveGrey: const Color(0xFF858585),
      );

  /// #858585
  final Color inactiveGrey;
}
