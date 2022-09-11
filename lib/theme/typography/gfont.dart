/* part of '../theme.dart';

mixin GFont {
  static TextStyle create(BuildContext context, {
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
    double? figmaHeight,
  }) {
    final height = (figmaHeight ?? fontSize) / fontSize;
    return GoogleFonts.montserrat(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? AppTheme.of(context).text.primary,
      height: height,
    );
  }
}
 */