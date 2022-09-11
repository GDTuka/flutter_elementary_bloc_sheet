import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:inspector/app/app.dart';
import 'package:inspector/navigation/guards/auth_guard.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'ScreenWidget,Route', routes: <AutoRoute>[])
class AppRouter extends _$AppRouter {
  AppRouter(AuthGuard initialGuard)
      : super(
          authGuard: initialGuard,
          navigatorKey: App.navigatorGlobalKey,
        );
}
