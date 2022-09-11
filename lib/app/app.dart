import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:inspector/di/scopes/global/global_dependency.dart';
import 'package:inspector/generated/l10n.dart';
import 'package:inspector/theme/app_theme.dart';
import 'package:inspector/theme/app_theme_data.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static final navigatorGlobalKey = GlobalKey<NavigatorState>();
  static NavigatorState get navigatorState {
    if (navigatorGlobalKey.currentState == null) {
      throw "can't provide NavigatorState as it isn't created yet or already disposed";
    }
    return navigatorGlobalKey.currentState!;
  }

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: context.global.theme,
      child: Builder(
        builder: (_) {
          if (Platform.isAndroid) {
            return MaterialApp.router(
              title: context.global.envModel.appName,
              debugShowCheckedModeBanner: false,
              supportedLocales: AppString.delegate.supportedLocales,
              localizationsDelegates: const [AppString.delegate, GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
              theme: materialThemeFromAppTheme(context.global.theme),
              routerDelegate: context.global.router.delegate(),
              routeInformationParser: context.global.router.defaultRouteParser(),
              builder: (context, child) {
                return child ?? const SizedBox();
              },
            );
          }
          return Theme(
            data: materialThemeFromAppTheme(context.global.theme),
            child: CupertinoApp.router(
              title: context.global.envModel.appName,
              debugShowCheckedModeBanner: false,
              theme: cupertinoThemeFromAppTheme(context.global.theme),
              supportedLocales: AppString.delegate.supportedLocales,
              localizationsDelegates: const [AppString.delegate, GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
              routerDelegate: context.global.router.delegate(),
              routeInformationParser: context.global.router.defaultRouteParser(),
              builder: (context, child) {
                return child ?? const SizedBox();
              },
            ),
          );
        },
      ),
    );
  }
}
