import 'package:flutter/material.dart';

class BackgroundColors {
  BackgroundColors({
    required this.primary,
    required this.secondary,
    required this.info,
    required this.bottomNavigationBarColor,
    required this.registrationBgGradientFirst,
    required this.registrationBgGradientSecond,
    required this.registrationManIconGradientFirst,
    required this.registrationManIconGradientsSecond,
    required this.loadingbackGroundColor,
    required this.shimmerBaseColor,
    required this.shimmerHighlightColor,
  });

  // ********** BACKGROUND ***********

  factory BackgroundColors.dark() => BackgroundColors(
        primary: const Color(0xFF090B0E),
        secondary: const Color(0xFF232323),
        info: const Color(0xFF282E36).withOpacity(0.7),
        bottomNavigationBarColor: const Color(0xFF0F0F0F),
        registrationBgGradientFirst: const Color(0xFF090B0E),
        registrationBgGradientSecond: const Color(0xFF141517),
        registrationManIconGradientFirst: const Color(0xFF616872),
        registrationManIconGradientsSecond: const Color(0xFF191C20),
        loadingbackGroundColor: const Color(0xFF090B0E).withOpacity(0.5),
        shimmerBaseColor: const Color(0xFF1D2022),
        shimmerHighlightColor: const Color(0xFF2C2E2F),
      );

  factory BackgroundColors.light() => BackgroundColors(
        primary: const Color(0xFFF9F9F9),
        secondary: const Color(0xFFF1F4F9),
        info: const Color(0xFFC8D4E1),
        bottomNavigationBarColor: const Color(0xFF0F0F0F),
        registrationBgGradientFirst: const Color(0xFF090B0E),
        registrationBgGradientSecond: const Color(0xFF141517),
        registrationManIconGradientFirst: const Color(0xFF616872),
        registrationManIconGradientsSecond: const Color(0xFF191C20),
        loadingbackGroundColor: const Color(0xFFF9F9F9),
        shimmerBaseColor: const Color(0xFF1D2022),
        shimmerHighlightColor: const Color(0xFF2C2E2F),
      );

  /// Основной фон
  /// #090B0E
  final Color primary;

  /// Вторичный фон
  /// #232323
  final Color secondary;

  /// Вторичный фон под нажатием
  /// #232323
  final secondaryPress = const Color(0xFF1D2022);

  /// Фон в информативных уведомлениях
  /// #282E36
  final Color info;

  // Фон для bottomNavigationBar
  // #0F0F0F
  final Color bottomNavigationBarColor;

  // Цвет от которого будет приходить градиент сверху вниз
  // #434446
  final Color registrationBgGradientFirst;

  // Цвет к которому будет приходить градиент сверху вниз
  // #0C0E11
  final Color registrationBgGradientSecond;

  // Цвет который будет к которому будут идти, он право верхнем угле
  // #191C20
  final Color registrationManIconGradientFirst;

  // Цвет который будет к которому будут идти, он право верхнем угле
  // #616872
  final Color registrationManIconGradientsSecond;

  // Цвет задника когда на весь экран появляется загрузка
  // #090B0E
  final Color loadingbackGroundColor;

  final Color shimmerBaseColor;

  final Color shimmerHighlightColor;
}
