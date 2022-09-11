import 'package:inspector/data/models/models.dart';
import 'package:inspector/di/app_async_dependency.dart';
import 'package:inspector/navigation/app_router.dart';
import 'package:inspector/theme/app_theme_data.dart';

abstract class IGlobalDependency extends AppAsyncDependency {
  AppThemeData get theme;

  AppRouter get router;

  EnvModel get envModel;
}
