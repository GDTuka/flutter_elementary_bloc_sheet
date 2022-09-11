import 'package:flutter/material.dart';

class MainColors {
  // ********** MAIN ***********
  MainColors({
    required this.primary,
    required this.primaryPress,
    required this.primaryDisable,
    required this.secondary,
    required this.secondaryPress,
    required this.secondaryDisable,
    required this.transparent,
    required this.accent,
    required this.accentPress,
    required this.accentDisable,
  });

  factory MainColors.light() => MainColors(
        primary: const Color(0xFF1D1826),
        primaryPress: const Color(0xFF6C7480),
        primaryDisable: const Color(0xFFE6EBF5),
        secondary: const Color(0xFFEDF0F4),
        secondaryPress: const Color(0xFFD4D9DE),
        secondaryDisable: const Color(0xFFE6E6E8),
        transparent: const Color(0xFFF3A000).withOpacity(0),
        accent: const Color(0xFF246BFD),
        accentPress: const Color(0xFF1B48A5),
        accentDisable: const Color(0xFF233F77),
      );

  factory MainColors.dark() => MainColors(
        primary: const Color(0xFFFFFFFF),
        primaryPress: const Color(0xFFC8C8C8),
        primaryDisable: const Color(0xFF45474D),
        secondary: const Color(0xFF232323),
        secondaryPress: const Color(0xFF1D2022),
        secondaryDisable: const Color(0xFF45474D),
        transparent: const Color(0xFFF3A000).withOpacity(0),
        accent: const Color(0xFF246BFD),
        accentPress: const Color(0xFF2055C2),
        accentDisable: const Color(0xFF246BFD),
      );

  /// Основной цвет элементов
  final Color primary;

  /// Элементы цвета Primary при нажатии
  final Color primaryPress;

  /// Заблокированные элементы цвета Primary
  final Color primaryDisable;

  /// Вторичный цвет элементов
  final Color secondary;

  /// Элементы цвета Secondary при нажатии
  final Color secondaryPress;

  /// Заблокированные элементы цвета Secondary
  final Color secondaryDisable;

  /// Цвет где прозрачный задний фон
  final Color transparent;

  /// Акцентный цвет
  final Color accent;

  /// Акцентный цвет при нажатии
  final Color accentPress;

  /// Акцентный цвет когда недоступно
  final Color accentDisable;
}
