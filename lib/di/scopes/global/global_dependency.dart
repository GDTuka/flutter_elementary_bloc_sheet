import 'package:flutter/src/widgets/framework.dart';
import 'package:inspector/data/models/local/env_model.dart';
import 'package:inspector/di/app_async_dependency.dart';
import 'package:inspector/di/scopes/global/abstract_global_dependency.dart';
import 'package:inspector/enviroment/app_enviroment.dart';
import 'package:inspector/navigation/app_router.dart';
import 'package:inspector/navigation/guards/auth_guard.dart';
import 'package:inspector/theme/app_theme_data.dart';
import 'package:provider/provider.dart';

class GlobalDependency extends AppAsyncDependency implements IGlobalDependency {
  @override
  Future<void> initAsync(BuildContext context) async {
    await AppEnviroment().init();
    _appEnviroment = AppEnviroment();
    _authGuard = AuthGuard();
    _appRouter = AppRouter(_authGuard);
    _appThemeData = AppThemeData.dark();
  }

  late AppThemeData _appThemeData;
  late AppRouter _appRouter;
  late AuthGuard _authGuard;
  late AppEnviroment _appEnviroment;

  @override
  AppThemeData get theme => _appThemeData;
  @override
  EnvModel get envModel => _appEnviroment.envModel;
  @override
  AppRouter get router => _appRouter;
}

extension DepContextExtension on BuildContext {
  IGlobalDependency get global => read<IGlobalDependency>();
}
