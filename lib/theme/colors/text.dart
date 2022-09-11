import 'package:flutter/material.dart';

class TextColors {
  // ********** TEXT ***********
  TextColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quad,
    required this.static,
    required this.success,
    required this.red,
    required this.accent,
  });

  factory TextColors.dark() => TextColors(
        primary: const Color(0xFFFFFFFF),
        secondary: const Color(0xFF898989),
        tertiary: const Color(0xFF3A3C3E),
        quad: const Color(0xFF2A2D30),
        static: const Color(0xFF090B0E),
        success: const Color(0xFF3E9737),
        red: const Color(0xFFEB4A4A),
        accent: const Color(0xFF246BFD),
      );

  factory TextColors.light() => TextColors(
        primary: const Color(0xFF1D1826),
        secondary: const Color(0xFF646464),
        tertiary: const Color(0xFF878787),
        quad: const Color(0xFFB6B6B6),
        static: const Color(0xFFFFFFFF),
        success: const Color(0xFF3E9737),
        red: const Color(0xFFC84646),
        accent: const Color(0xFF246BFD),
      );

  /// Основной текст
  /// #FFFFFF
  final Color primary;

  /// Текст на вторичных кнопках (Filled, Outlined, Ghost)
  /// #898989
  final Color secondary;

  /// Caption (названия полей ввода, подписи), пояснения
  /// #3A3C3E
  final Color tertiary;

  /// Placeholder в полях ввода текст в элементах цвета Main Primary, Main Secondary (состояние Disable)
  /// #2A2D30
  final Color quad;

  /// Для надписей в элементах цвета Main Primary и Main Accent (во всех состояниях), а также в элементах цвета Secondary в состоянии Disable
  /// #090B0E
  final Color static;

  // Успешное выполнение
  //#3E9737
  final Color success;

  /// Ошибки, отрицательные действия
  /// #EB4A4A
  final Color red;

  /// Пояснение в поле ввода цены на экране заказа
  /// #246BFD
  final Color accent;
}
