/* extension TextExtension on TextStyle {
  TextStyle get bg => copyWith(color: AppColors.bg.primary);
  TextStyle get primary => copyWith(color: AppColors.main.primary);
  TextStyle get accent => copyWith(color: AppColors.main.accent);
  TextStyle get accentDisable => copyWith(color: AppColors.main.accentDisable);
  TextStyle get tertiary => copyWith(color: AppColors.text.tertiary);
  TextStyle get tertiaryLight => copyWith(color: AppColors.text.tertiary);
  TextStyle get red => copyWith(color: AppColors.text.red);
  TextStyle get bgSecondary => copyWith(color: AppColors.bg.secondary);
  TextStyle get textSecondary => copyWith(color: AppColors.text.secondary);
  TextStyle get success => copyWith(color: AppColors.text.success);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get textStatic => copyWith(color: AppColors.text.static);
  TextStyle get primaryDisable => copyWith(color: AppColors.main.primaryDisable);
  TextStyle get secondaryDisable => copyWith(color: AppColors.main.secondaryDisable);
} */

import 'package:flutter/material.dart';
import 'package:inspector/app/app.dart';
import 'package:inspector/theme/app_theme.dart';

extension TextExtension on TextStyle {
  TextStyle get bg => copyWith(color: AppTheme.of(App.navigatorState.context).bg.primary);
  TextStyle get primary => copyWith(color: AppTheme.of(App.navigatorState.context).main.primary);
  TextStyle get accent => copyWith(color: AppTheme.of(App.navigatorState.context).main.accent);
  TextStyle get accentDisable => copyWith(color: AppTheme.of(App.navigatorState.context).main.accentDisable);
  TextStyle get tertiary => copyWith(color: AppTheme.of(App.navigatorState.context).text.tertiary);
  TextStyle get tertiaryLight => copyWith(color: AppTheme.of(App.navigatorState.context).text.tertiary);
  TextStyle get red => copyWith(color: AppTheme.of(App.navigatorState.context).text.red);
  TextStyle get bgSecondary => copyWith(color: AppTheme.of(App.navigatorState.context).bg.secondary);
  TextStyle get textSecondary => copyWith(color: AppTheme.of(App.navigatorState.context).text.secondary);
  TextStyle get success => copyWith(color: AppTheme.of(App.navigatorState.context).text.success);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get textStatic => copyWith(color: AppTheme.of(App.navigatorState.context).text.static);
  TextStyle get primaryDisable => copyWith(color: AppTheme.of(App.navigatorState.context).main.primaryDisable);
  TextStyle get secondaryDisable => copyWith(color: AppTheme.of(App.navigatorState.context).main.secondaryDisable);
}

/* extension TextExtension on TextStyle {
  TextStyle bg(BuildContext context) => copyWith(color: AppTheme.of(context).bg.primary);
  TextStyle primary(BuildContext context) => copyWith(color: AppTheme.of(context).main.primary);
  TextStyle accent(BuildContext context) => copyWith(color: AppTheme.of(context).main.accent);
  TextStyle accentDisable(BuildContext context) => copyWith(color: AppTheme.of(context).main.accentDisable);
  TextStyle tertiary(BuildContext context) => copyWith(color: AppTheme.of(context).text.tertiary);
  TextStyle tertiaryLight(BuildContext context) => copyWith(color: AppTheme.of(context).text.tertiary);
  TextStyle red(BuildContext context) => copyWith(color: AppTheme.of(context).text.red);
  TextStyle bgSecondary(BuildContext context) => copyWith(color: AppTheme.of(context).bg.secondary);
  TextStyle textSecondary(BuildContext context) => copyWith(color: AppTheme.of(context).text.secondary);
  TextStyle success(BuildContext context) => copyWith(color: AppTheme.of(context).text.success);
  TextStyle medium(BuildContext context) => copyWith(fontWeight: FontWeight.w500);
  TextStyle semiBold(BuildContext context) => copyWith(fontWeight: FontWeight.w600);
  TextStyle bold(BuildContext context) => copyWith(fontWeight: FontWeight.bold);
  TextStyle underline(BuildContext context) => copyWith(decoration: TextDecoration.underline);
  TextStyle textStatic(BuildContext context) => copyWith(color: AppTheme.of(context).text.static);
  TextStyle primaryDisable(BuildContext context) => copyWith(color: AppTheme.of(context).main.primaryDisable);
  TextStyle secondaryDisable(BuildContext context) => copyWith(color: AppTheme.of(context).main.secondaryDisable);
}
 */