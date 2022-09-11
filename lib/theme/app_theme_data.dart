import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inspector/theme/app_theme.dart';
import 'package:inspector/theme/colors/app_button_colors.dart';
import 'package:inspector/theme/colors/background.dart';
import 'package:inspector/theme/colors/form.dart';
import 'package:inspector/theme/colors/main.dart';
import 'package:inspector/theme/colors/stroke.dart';
import 'package:inspector/theme/colors/text.dart';

ThemeData materialThemeFromAppTheme(AppThemeData theme) => ThemeData.from(
      textTheme: theme.textTheme,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        background: theme.bg.primary,
        error: theme.text.red,
        primary: theme.main.primary,
        secondary: theme.main.secondary,
        tertiary: theme.text.tertiary,
        onSecondary: theme.bg.primary,
        onError: theme.bg.primary,
        surface: theme.bg.secondary,
        onPrimary: theme.bg.primary,
        onSurface: theme.main.primary,
        onBackground: theme.main.primary,
      ),
    ).copyWith(
      scaffoldBackgroundColor: theme.bg.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: theme.bg.primary,
        foregroundColor: theme.text.primary,
        centerTitle: true,
        titleTextStyle: theme.textTheme.headline3,
      ),
    );

CupertinoThemeData cupertinoThemeFromAppTheme(AppThemeData theme) =>
    MaterialBasedCupertinoThemeData(materialTheme: materialThemeFromAppTheme(theme)).copyWith(scaffoldBackgroundColor: theme.bg.primary);

class AppThemeData {
  AppThemeData({
    required this.main,
    required this.bg,
    required this.text,
    required this.stroke,
    required this.others,
    required this.forms,
    required this.isDarkMode,
  });

  factory AppThemeData.dark() => AppThemeData(
        main: MainColors.dark(),
        bg: BackgroundColors.dark(),
        text: TextColors.dark(),
        stroke: StrokeColors.dark(),
        others: OthersColors.dark(),
        forms: FormColors.dark(),
        isDarkMode: true,
      );

  factory AppThemeData.light() => AppThemeData(
        main: MainColors.light(),
        bg: BackgroundColors.light(),
        text: TextColors.light(),
        stroke: StrokeColors.light(),
        others: OthersColors.light(),
        forms: FormColors.light(),
        isDarkMode: false,
      );

  final bool isDarkMode;
  final MainColors main;
  final BackgroundColors bg;
  final TextColors text;
  final StrokeColors stroke;
  // Применяются единично внутри приложения
  final OthersColors others;
  final FormColors forms;

  TextStyle create({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
    double? figmaHeight,
  }) {
    final height = (figmaHeight ?? fontSize) / fontSize;
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? text.primary,
      height: height,
    );
  }

  /*Text styles for body*/
  /// Body 1
  TextStyle get b1 => create(
        fontSize: 20,
        figmaHeight: 24,
      );

  /// Body 2
  TextStyle get b2 => create(
        fontWeight: FontWeight.w300,
        fontSize: 16,
        figmaHeight: 20,
      );

  /// Body 3
  TextStyle get b3 => create(
        figmaHeight: 18,
      );

  /*Text styles for headers*/
  /// Headline 1
  TextStyle get h1 => create(
        fontWeight: FontWeight.w300,
        fontSize: 32,
        figmaHeight: 36,
      );

  /// Headline 2
  TextStyle get h2 => create(
        fontWeight: FontWeight.w300,
        fontSize: 24,
        figmaHeight: 28,
      );

  /// Headline 3
  TextStyle get h3 => create(
        fontSize: 20,
        figmaHeight: 24,
      );

  /*Caption text styles*/
  /// Caption 1
  TextStyle get caption => create(
        fontSize: 12,
        figmaHeight: 16,
      );

  /// Caption 2
  TextStyle get caption2 => create(
        fontSize: 9,
        figmaHeight: 13,
      );

  /*Subtitle text styles*/
  /// Subtitle 1
  TextStyle get subtitle1 => create(
        fontWeight: FontWeight.w300,
        fontSize: 16,
        figmaHeight: 20,
      );

  /// Subtitle 2
  TextStyle get subtitle2 => create(
        figmaHeight: 18,
      );

  /*Button text styles*/
  TextStyle get m => create(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        figmaHeight: 20,
      );

  TextStyle get s => create(
        fontWeight: FontWeight.w500,
        figmaHeight: 18,
      );

  TextStyle get ss => create(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        figmaHeight: 16,
      );

  TextTheme get textTheme => TextTheme(
        headline1: h1,
        headline2: h2,
        headline3: h3,
        bodyText1: b1,
        bodyText2: b2,
        subtitle1: subtitle1,
        subtitle2: subtitle2,
        button: m,
        caption: caption,
      );

  /*Border styles*/
  UnderlineInputBorder get normalBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: stroke.tetriary,
        ),
      );

  UnderlineInputBorder get normalFocusBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: main.primary,
        ),
      );

  UnderlineInputBorder get succesBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: stroke.success,
        ),
      );
  UnderlineInputBorder get errorBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: stroke.danger,
        ),
      );
  UnderlineInputBorder get phoneBorder => UnderlineInputBorder(
        borderSide: BorderSide(
          color: stroke.tetriary,
        ),
      );

  /*Gradients*/
  LinearGradient get registrationBgGradient => LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          bg.registrationBgGradientFirst,
          bg.registrationBgGradientSecond,
        ],
      );
  LinearGradient get registrationManIconGradient => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [
          bg.registrationManIconGradientFirst,
          bg.registrationBgGradientSecond,
        ],
        tileMode: TileMode.mirror,
      );
}

extension ThemeExt on WidgetModel {
  // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
  AppThemeData get theme => AppTheme.of(context);
}
