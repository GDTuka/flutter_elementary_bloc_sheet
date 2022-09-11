import 'package:dart_mappable/dart_mappable.dart';

@MappableEnum(mode: ValuesMode.named)
enum EnvType {
  devel,
  test,
  release,
}

extension EnvTypeExtension on String {
  EnvType get toEnvType {
    switch (this) {
      case 'devel':
        return EnvType.devel;
      case 'test':
        return EnvType.test;
      case 'release':
        return EnvType.release;
      default:
        return EnvType.devel;
    }
  }
}
