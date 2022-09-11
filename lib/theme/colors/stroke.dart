import 'package:flutter/material.dart';

class StrokeColors {
  // ********** STROKE ***********
  StrokeColors({
    required this.active,
    required this.incative,
    required this.blocked,
    required this.secondary,
    required this.tetriary,
    required this.danger,
    required this.success,
    required this.iconDisable,
    required this.iconPress,
    required this.accent,
  });

  factory StrokeColors.dark() => StrokeColors(
        active: const Color(0xFFFFFFFF),
        incative: const Color(0xFF3A3C3E),
        blocked: const Color(0xFF2A2D30),
        secondary: const Color(0xFF898989),
        tetriary: const Color(0xFF3A3C3E),
        danger: const Color(0xFFBA3005),
        success: const Color(0xFF3E9737),
        iconDisable: const Color(0xFFA7A7A7),
        iconPress: const Color(0xFF323232),
        accent: const Color(0xFF246BFD),
      );

  factory StrokeColors.light() => StrokeColors(
        active: const Color(0xFF246BFD),
        incative: const Color(0xFFAEAEAE),
        blocked: const Color(0xFFB6B6B6),
        secondary: const Color(0xFFB0B0B0),
        tetriary: const Color(0xFF8B8B8B),
        danger: const Color(0xFFC84646),
        success: const Color(0xFF3E9737),
        iconDisable: const Color(0xFFA0A0A0),
        iconPress: const Color(0xFF555555),
        accent: const Color(0xFF246BFD),
      );

  //  Активное состояние поля воода
  // #FFFFFF
  final Color active;

  // Неактивное состояние поля ввода
  // #3A3C3E
  final Color incative;

  // Некативное
  // #2A2D30
  final Color blocked;

  // Заблокированное состояние поля ввода
  // #898989
  final Color secondary;

  //  Вторичный цвет
  // #3A3C3E
  final Color tetriary;

  // Третичный цвет
  // #BA3005
  final Color danger;

  //  Ошибки
  // #3E9737
  final Color success;

  //  Неактивная кнопка
  // #A7A7A7
  final Color iconDisable;

  // Иконка нажата
  // #323232
  final Color iconPress;

  //  Акцентный цвет
  // #246BFD
  final Color accent;
}
