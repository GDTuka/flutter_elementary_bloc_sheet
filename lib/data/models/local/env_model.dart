import 'package:dart_mappable/dart_mappable.dart';

import '../models.mapper.g.dart';

@MappableClass(
  caseStyle: CaseStyle(
    head: TextTransform.upperCase,
    tail: TextTransform.upperCase,
    separator: '_',
  ),
)
class EnvModel with Mappable {
  EnvModel({
    required this.appName,
    required this.apiUrl,
    required this.appId,
  });

  final String appName;
  final String apiUrl;
  final String appId;
}
