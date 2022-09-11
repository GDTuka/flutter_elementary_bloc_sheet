import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inspector/app/app.dart';
import 'package:inspector/di/app_async_dependency.dart';
import 'package:inspector/di/scopes/global/abstract_global_dependency.dart';
import 'package:inspector/di/scopes/global/global_dependency.dart';

Future<void> runner() async {
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded<Future<void>>(() async {
    Paint.enableDithering;
    runApp(AsyncDependencyWidget<IGlobalDependency>(
        create: GlobalDependency.new,
        //TODO(): Replace with SplashScreen
        loaderBuilder: (context) => Container(),
        child: const App()));
  }, _onAppErro);
}

void _onAppErro(exception, stack) {}
