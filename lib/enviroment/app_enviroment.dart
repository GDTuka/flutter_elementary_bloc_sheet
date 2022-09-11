import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:inspector/data/models/enum/env_type.dart';
import 'package:inspector/data/models/models.dart';
import 'package:inspector/data/models/models.mapper.g.dart';
import 'package:inspector/uitils/logger.dart';

class AppEnviroment {
  factory AppEnviroment() {
    return _instance;
  }
  AppEnviroment._create();

  static final AppEnviroment _instance = AppEnviroment._create();

  EnvType get defaultEnv => EnvType.devel;

  EnvType? currentEnvType;
  late EnvModel envModel;

  final _logger = getLogger('AppEnviroment');

  Completer<EnvModel> inited = Completer();

  Future<void> init() async {
    EnvType envType = String.fromEnvironment(
      'env',
      defaultValue: defaultEnv.name,
    ).toLowerCase().toEnvType;
    await dotenv.load(fileName: 'env/${envType.name}.env');
    envModel = Mapper.fromMap(dotenv.env);
    _logger.i('APP WILL USE ${envType.name.toUpperCase()} ENVIROMENT');
  }
}
