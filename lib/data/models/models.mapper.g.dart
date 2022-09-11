import 'package:dart_mappable/dart_mappable.dart';
import 'package:dart_mappable/internals.dart';

import 'local/env_model.dart';


// === ALL STATICALLY REGISTERED MAPPERS ===

var _mappers = <BaseMapper>{
  // class mappers
  EnvModelMapper._(),
  // enum mappers
  // custom mappers
};


// === GENERATED CLASS MAPPERS AND EXTENSIONS ===

class EnvModelMapper extends BaseMapper<EnvModel> {
  EnvModelMapper._();

  @override Function get decoder => decode;
  EnvModel decode(dynamic v) => checked(v, (Map<String, dynamic> map) => fromMap(map));
  EnvModel fromMap(Map<String, dynamic> map) => EnvModel(appName: Mapper.i.$get(map, 'APP_NAME'), apiUrl: Mapper.i.$get(map, 'API_URL'), appId: Mapper.i.$get(map, 'APP_ID'));

  @override Function get encoder => (EnvModel v) => encode(v);
  dynamic encode(EnvModel v) => toMap(v);
  Map<String, dynamic> toMap(EnvModel e) => {'APP_NAME': Mapper.i.$enc(e.appName, 'appName'), 'API_URL': Mapper.i.$enc(e.apiUrl, 'apiUrl'), 'APP_ID': Mapper.i.$enc(e.appId, 'appId')};

  @override String stringify(EnvModel self) => 'EnvModel(appName: ${Mapper.asString(self.appName)}, apiUrl: ${Mapper.asString(self.apiUrl)}, appId: ${Mapper.asString(self.appId)})';
  @override int hash(EnvModel self) => Mapper.hash(self.appName) ^ Mapper.hash(self.apiUrl) ^ Mapper.hash(self.appId);
  @override bool equals(EnvModel self, EnvModel other) => Mapper.isEqual(self.appName, other.appName) && Mapper.isEqual(self.apiUrl, other.apiUrl) && Mapper.isEqual(self.appId, other.appId);

  @override Function get typeFactory => (f) => f<EnvModel>();
}

extension EnvModelMapperExtension  on EnvModel {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);
  EnvModelCopyWith<EnvModel> get copyWith => EnvModelCopyWith(this, $identity);
}

abstract class EnvModelCopyWith<$R> {
  factory EnvModelCopyWith(EnvModel value, Then<EnvModel, $R> then) = _EnvModelCopyWithImpl<$R>;
  $R call({String? appName, String? apiUrl, String? appId});
  $R apply(EnvModel Function(EnvModel) transform);
}

class _EnvModelCopyWithImpl<$R> extends BaseCopyWith<EnvModel, $R> implements EnvModelCopyWith<$R> {
  _EnvModelCopyWithImpl(EnvModel value, Then<EnvModel, $R> then) : super(value, then);

  @override $R call({String? appName, String? apiUrl, String? appId}) => $then(EnvModel(appName: appName ?? $value.appName, apiUrl: apiUrl ?? $value.apiUrl, appId: appId ?? $value.appId));
}


// === GENERATED ENUM MAPPERS AND EXTENSIONS ===




// === GENERATED UTILITY CODE ===

class Mapper {
  Mapper._();

  static MapperContainer i = MapperContainer(_mappers);

  static T fromValue<T>(dynamic value) => i.fromValue<T>(value);
  static T fromMap<T>(Map<String, dynamic> map) => i.fromMap<T>(map);
  static T fromIterable<T>(Iterable<dynamic> iterable) => i.fromIterable<T>(iterable);
  static T fromJson<T>(String json) => i.fromJson<T>(json);

  static dynamic toValue(dynamic value) => i.toValue(value);
  static Map<String, dynamic> toMap(dynamic object) => i.toMap(object);
  static Iterable<dynamic> toIterable(dynamic object) => i.toIterable(object);
  static String toJson(dynamic object) => i.toJson(object);

  static bool isEqual(dynamic value, Object? other) => i.isEqual(value, other);
  static int hash(dynamic value) => i.hash(value);
  static String asString(dynamic value) => i.asString(value);

  static void use<T>(BaseMapper<T> mapper) => i.use<T>(mapper);
  static BaseMapper<T>? unuse<T>() => i.unuse<T>();
  static void useAll(List<BaseMapper> mappers) => i.useAll(mappers);

  static BaseMapper<T>? get<T>([Type? type]) => i.get<T>(type);
  static List<BaseMapper> getAll() => i.getAll();
}

mixin Mappable implements MappableMixin {
  String toJson() => Mapper.toJson(this);
  Map<String, dynamic> toMap() => Mapper.toMap(this);

  @override
  String toString() {
    return _guard(() => Mapper.asString(this), super.toString);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            _guard(() => Mapper.isEqual(this, other), () => super == other));
  }

  @override
  int get hashCode {
    return _guard(() => Mapper.hash(this), () => super.hashCode);
  }

  T _guard<T>(T Function() fn, T Function() fallback) {
    try {
      return fn();
    } on MapperException catch (e) {
      if (e.isUnsupportedOrUnallowed()) {
        return fallback();
      } else {
        rethrow;
      }
    }
  }
}
