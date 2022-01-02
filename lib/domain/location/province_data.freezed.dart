// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'province_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'locationResultData':
      return LocationResultData.fromJson(json);
    case 'locationStatusData':
      return LocationStatusData.fromJson(json);
    case 'costsResults':
      return CostsResults.fromJson(json);
    case 'costs':
      return Costs.fromJson(json);
    case 'cost':
      return Cost.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LocationData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$LocationDataTearOff {
  const _$LocationDataTearOff();

  LocationResultData locationResultData(
      @JsonKey(name: "province_id") String provinceId,
      String province,
      @JsonKey(name: "city_id") String? cityId,
      String? type,
      @JsonKey(name: "city_name") String? cityName,
      @JsonKey(name: "postal_code") String? postalCode) {
    return LocationResultData(
      provinceId,
      province,
      cityId,
      type,
      cityName,
      postalCode,
    );
  }

  LocationStatusData locationStatusData(int? code, String? description) {
    return LocationStatusData(
      code,
      description,
    );
  }

  CostsResults costsResults(String code, String name, List<Costs> costs) {
    return CostsResults(
      code,
      name,
      costs,
    );
  }

  Costs costs(String service, String description, List<Cost> cost) {
    return Costs(
      service,
      description,
      cost,
    );
  }

  Cost cost(int value, String etd, String note) {
    return Cost(
      value,
      etd,
      note,
    );
  }

  LocationData fromJson(Map<String, Object?> json) {
    return LocationData.fromJson(json);
  }
}

/// @nodoc
const $LocationData = _$LocationDataTearOff();

/// @nodoc
mixin _$LocationData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)
        locationResultData,
    required TResult Function(int? code, String? description)
        locationStatusData,
    required TResult Function(String code, String name, List<Costs> costs)
        costsResults,
    required TResult Function(
            String service, String description, List<Cost> cost)
        costs,
    required TResult Function(int value, String etd, String note) cost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationResultData value) locationResultData,
    required TResult Function(LocationStatusData value) locationStatusData,
    required TResult Function(CostsResults value) costsResults,
    required TResult Function(Costs value) costs,
    required TResult Function(Cost value) cost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res> implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  final LocationData _value;
  // ignore: unused_field
  final $Res Function(LocationData) _then;
}

/// @nodoc
abstract class $LocationResultDataCopyWith<$Res> {
  factory $LocationResultDataCopyWith(
          LocationResultData value, $Res Function(LocationResultData) then) =
      _$LocationResultDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "province_id") String provinceId,
      String province,
      @JsonKey(name: "city_id") String? cityId,
      String? type,
      @JsonKey(name: "city_name") String? cityName,
      @JsonKey(name: "postal_code") String? postalCode});
}

/// @nodoc
class _$LocationResultDataCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res>
    implements $LocationResultDataCopyWith<$Res> {
  _$LocationResultDataCopyWithImpl(
      LocationResultData _value, $Res Function(LocationResultData) _then)
      : super(_value, (v) => _then(v as LocationResultData));

  @override
  LocationResultData get _value => super._value as LocationResultData;

  @override
  $Res call({
    Object? provinceId = freezed,
    Object? province = freezed,
    Object? cityId = freezed,
    Object? type = freezed,
    Object? cityName = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(LocationResultData(
      provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
      province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName == freezed
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationResultData implements LocationResultData {
  _$LocationResultData(
      @JsonKey(name: "province_id") this.provinceId,
      this.province,
      @JsonKey(name: "city_id") this.cityId,
      this.type,
      @JsonKey(name: "city_name") this.cityName,
      @JsonKey(name: "postal_code") this.postalCode,
      {String? $type})
      : $type = $type ?? 'locationResultData';

  factory _$LocationResultData.fromJson(Map<String, dynamic> json) =>
      _$$LocationResultDataFromJson(json);

  @override
  @JsonKey(name: "province_id")
  final String provinceId;
  @override
  final String province;
  @override
  @JsonKey(name: "city_id")
  final String? cityId;
  @override
  final String? type;
  @override
  @JsonKey(name: "city_name")
  final String? cityName;
  @override
  @JsonKey(name: "postal_code")
  final String? postalCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationData.locationResultData(provinceId: $provinceId, province: $province, cityId: $cityId, type: $type, cityName: $cityName, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationResultData &&
            const DeepCollectionEquality()
                .equals(other.provinceId, provinceId) &&
            const DeepCollectionEquality().equals(other.province, province) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.cityName, cityName) &&
            const DeepCollectionEquality()
                .equals(other.postalCode, postalCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(provinceId),
      const DeepCollectionEquality().hash(province),
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(cityName),
      const DeepCollectionEquality().hash(postalCode));

  @JsonKey(ignore: true)
  @override
  $LocationResultDataCopyWith<LocationResultData> get copyWith =>
      _$LocationResultDataCopyWithImpl<LocationResultData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)
        locationResultData,
    required TResult Function(int? code, String? description)
        locationStatusData,
    required TResult Function(String code, String name, List<Costs> costs)
        costsResults,
    required TResult Function(
            String service, String description, List<Cost> cost)
        costs,
    required TResult Function(int value, String etd, String note) cost,
  }) {
    return locationResultData(
        provinceId, province, cityId, type, cityName, postalCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
  }) {
    return locationResultData?.call(
        provinceId, province, cityId, type, cityName, postalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
    required TResult orElse(),
  }) {
    if (locationResultData != null) {
      return locationResultData(
          provinceId, province, cityId, type, cityName, postalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationResultData value) locationResultData,
    required TResult Function(LocationStatusData value) locationStatusData,
    required TResult Function(CostsResults value) costsResults,
    required TResult Function(Costs value) costs,
    required TResult Function(Cost value) cost,
  }) {
    return locationResultData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
  }) {
    return locationResultData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
    required TResult orElse(),
  }) {
    if (locationResultData != null) {
      return locationResultData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationResultDataToJson(this);
  }
}

abstract class LocationResultData implements LocationData {
  factory LocationResultData(
      @JsonKey(name: "province_id") String provinceId,
      String province,
      @JsonKey(name: "city_id") String? cityId,
      String? type,
      @JsonKey(name: "city_name") String? cityName,
      @JsonKey(name: "postal_code") String? postalCode) = _$LocationResultData;

  factory LocationResultData.fromJson(Map<String, dynamic> json) =
      _$LocationResultData.fromJson;

  @JsonKey(name: "province_id")
  String get provinceId;
  String get province;
  @JsonKey(name: "city_id")
  String? get cityId;
  String? get type;
  @JsonKey(name: "city_name")
  String? get cityName;
  @JsonKey(name: "postal_code")
  String? get postalCode;
  @JsonKey(ignore: true)
  $LocationResultDataCopyWith<LocationResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStatusDataCopyWith<$Res> {
  factory $LocationStatusDataCopyWith(
          LocationStatusData value, $Res Function(LocationStatusData) then) =
      _$LocationStatusDataCopyWithImpl<$Res>;
  $Res call({int? code, String? description});
}

/// @nodoc
class _$LocationStatusDataCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res>
    implements $LocationStatusDataCopyWith<$Res> {
  _$LocationStatusDataCopyWithImpl(
      LocationStatusData _value, $Res Function(LocationStatusData) _then)
      : super(_value, (v) => _then(v as LocationStatusData));

  @override
  LocationStatusData get _value => super._value as LocationStatusData;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(LocationStatusData(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationStatusData implements LocationStatusData {
  _$LocationStatusData(this.code, this.description, {String? $type})
      : $type = $type ?? 'locationStatusData';

  factory _$LocationStatusData.fromJson(Map<String, dynamic> json) =>
      _$$LocationStatusDataFromJson(json);

  @override
  final int? code;
  @override
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationData.locationStatusData(code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationStatusData &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  $LocationStatusDataCopyWith<LocationStatusData> get copyWith =>
      _$LocationStatusDataCopyWithImpl<LocationStatusData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)
        locationResultData,
    required TResult Function(int? code, String? description)
        locationStatusData,
    required TResult Function(String code, String name, List<Costs> costs)
        costsResults,
    required TResult Function(
            String service, String description, List<Cost> cost)
        costs,
    required TResult Function(int value, String etd, String note) cost,
  }) {
    return locationStatusData(code, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
  }) {
    return locationStatusData?.call(code, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
    required TResult orElse(),
  }) {
    if (locationStatusData != null) {
      return locationStatusData(code, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationResultData value) locationResultData,
    required TResult Function(LocationStatusData value) locationStatusData,
    required TResult Function(CostsResults value) costsResults,
    required TResult Function(Costs value) costs,
    required TResult Function(Cost value) cost,
  }) {
    return locationStatusData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
  }) {
    return locationStatusData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
    required TResult orElse(),
  }) {
    if (locationStatusData != null) {
      return locationStatusData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationStatusDataToJson(this);
  }
}

abstract class LocationStatusData implements LocationData {
  factory LocationStatusData(int? code, String? description) =
      _$LocationStatusData;

  factory LocationStatusData.fromJson(Map<String, dynamic> json) =
      _$LocationStatusData.fromJson;

  int? get code;
  String? get description;
  @JsonKey(ignore: true)
  $LocationStatusDataCopyWith<LocationStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostsResultsCopyWith<$Res> {
  factory $CostsResultsCopyWith(
          CostsResults value, $Res Function(CostsResults) then) =
      _$CostsResultsCopyWithImpl<$Res>;
  $Res call({String code, String name, List<Costs> costs});
}

/// @nodoc
class _$CostsResultsCopyWithImpl<$Res> extends _$LocationDataCopyWithImpl<$Res>
    implements $CostsResultsCopyWith<$Res> {
  _$CostsResultsCopyWithImpl(
      CostsResults _value, $Res Function(CostsResults) _then)
      : super(_value, (v) => _then(v as CostsResults));

  @override
  CostsResults get _value => super._value as CostsResults;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? costs = freezed,
  }) {
    return _then(CostsResults(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      costs == freezed
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<Costs>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CostsResults implements CostsResults {
  _$CostsResults(this.code, this.name, this.costs, {String? $type})
      : $type = $type ?? 'costsResults';

  factory _$CostsResults.fromJson(Map<String, dynamic> json) =>
      _$$CostsResultsFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final List<Costs> costs;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationData.costsResults(code: $code, name: $name, costs: $costs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CostsResults &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.costs, costs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(costs));

  @JsonKey(ignore: true)
  @override
  $CostsResultsCopyWith<CostsResults> get copyWith =>
      _$CostsResultsCopyWithImpl<CostsResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)
        locationResultData,
    required TResult Function(int? code, String? description)
        locationStatusData,
    required TResult Function(String code, String name, List<Costs> costs)
        costsResults,
    required TResult Function(
            String service, String description, List<Cost> cost)
        costs,
    required TResult Function(int value, String etd, String note) cost,
  }) {
    return costsResults(code, name, this.costs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
  }) {
    return costsResults?.call(code, name, this.costs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
    required TResult orElse(),
  }) {
    if (costsResults != null) {
      return costsResults(code, name, this.costs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationResultData value) locationResultData,
    required TResult Function(LocationStatusData value) locationStatusData,
    required TResult Function(CostsResults value) costsResults,
    required TResult Function(Costs value) costs,
    required TResult Function(Cost value) cost,
  }) {
    return costsResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
  }) {
    return costsResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
    required TResult orElse(),
  }) {
    if (costsResults != null) {
      return costsResults(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CostsResultsToJson(this);
  }
}

abstract class CostsResults implements LocationData {
  factory CostsResults(String code, String name, List<Costs> costs) =
      _$CostsResults;

  factory CostsResults.fromJson(Map<String, dynamic> json) =
      _$CostsResults.fromJson;

  String get code;
  String get name;
  List<Costs> get costs;
  @JsonKey(ignore: true)
  $CostsResultsCopyWith<CostsResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostsCopyWith<$Res> {
  factory $CostsCopyWith(Costs value, $Res Function(Costs) then) =
      _$CostsCopyWithImpl<$Res>;
  $Res call({String service, String description, List<Cost> cost});
}

/// @nodoc
class _$CostsCopyWithImpl<$Res> extends _$LocationDataCopyWithImpl<$Res>
    implements $CostsCopyWith<$Res> {
  _$CostsCopyWithImpl(Costs _value, $Res Function(Costs) _then)
      : super(_value, (v) => _then(v as Costs));

  @override
  Costs get _value => super._value as Costs;

  @override
  $Res call({
    Object? service = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(Costs(
      service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<Cost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Costs implements Costs {
  _$Costs(this.service, this.description, this.cost, {String? $type})
      : $type = $type ?? 'costs';

  factory _$Costs.fromJson(Map<String, dynamic> json) => _$$CostsFromJson(json);

  @override
  final String service;
  @override
  final String description;
  @override
  final List<Cost> cost;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationData.costs(service: $service, description: $description, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Costs &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.cost, cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(service),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(cost));

  @JsonKey(ignore: true)
  @override
  $CostsCopyWith<Costs> get copyWith =>
      _$CostsCopyWithImpl<Costs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)
        locationResultData,
    required TResult Function(int? code, String? description)
        locationStatusData,
    required TResult Function(String code, String name, List<Costs> costs)
        costsResults,
    required TResult Function(
            String service, String description, List<Cost> cost)
        costs,
    required TResult Function(int value, String etd, String note) cost,
  }) {
    return costs(service, description, this.cost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
  }) {
    return costs?.call(service, description, this.cost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
    required TResult orElse(),
  }) {
    if (costs != null) {
      return costs(service, description, this.cost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationResultData value) locationResultData,
    required TResult Function(LocationStatusData value) locationStatusData,
    required TResult Function(CostsResults value) costsResults,
    required TResult Function(Costs value) costs,
    required TResult Function(Cost value) cost,
  }) {
    return costs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
  }) {
    return costs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
    required TResult orElse(),
  }) {
    if (costs != null) {
      return costs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CostsToJson(this);
  }
}

abstract class Costs implements LocationData {
  factory Costs(String service, String description, List<Cost> cost) = _$Costs;

  factory Costs.fromJson(Map<String, dynamic> json) = _$Costs.fromJson;

  String get service;
  String get description;
  List<Cost> get cost;
  @JsonKey(ignore: true)
  $CostsCopyWith<Costs> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res>;
  $Res call({int value, String etd, String note});
}

/// @nodoc
class _$CostCopyWithImpl<$Res> extends _$LocationDataCopyWithImpl<$Res>
    implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(Cost _value, $Res Function(Cost) _then)
      : super(_value, (v) => _then(v as Cost));

  @override
  Cost get _value => super._value as Cost;

  @override
  $Res call({
    Object? value = freezed,
    Object? etd = freezed,
    Object? note = freezed,
  }) {
    return _then(Cost(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String,
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Cost implements Cost {
  _$Cost(this.value, this.etd, this.note, {String? $type})
      : $type = $type ?? 'cost';

  factory _$Cost.fromJson(Map<String, dynamic> json) => _$$CostFromJson(json);

  @override
  final int value;
  @override
  final String etd;
  @override
  final String note;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LocationData.cost(value: $value, etd: $etd, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Cost &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.etd, etd) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(etd),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  $CostCopyWith<Cost> get copyWith =>
      _$CostCopyWithImpl<Cost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)
        locationResultData,
    required TResult Function(int? code, String? description)
        locationStatusData,
    required TResult Function(String code, String name, List<Costs> costs)
        costsResults,
    required TResult Function(
            String service, String description, List<Cost> cost)
        costs,
    required TResult Function(int value, String etd, String note) cost,
  }) {
    return cost(value, etd, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
  }) {
    return cost?.call(value, etd, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: "province_id") String provinceId,
            String province,
            @JsonKey(name: "city_id") String? cityId,
            String? type,
            @JsonKey(name: "city_name") String? cityName,
            @JsonKey(name: "postal_code") String? postalCode)?
        locationResultData,
    TResult Function(int? code, String? description)? locationStatusData,
    TResult Function(String code, String name, List<Costs> costs)? costsResults,
    TResult Function(String service, String description, List<Cost> cost)?
        costs,
    TResult Function(int value, String etd, String note)? cost,
    required TResult orElse(),
  }) {
    if (cost != null) {
      return cost(value, etd, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocationResultData value) locationResultData,
    required TResult Function(LocationStatusData value) locationStatusData,
    required TResult Function(CostsResults value) costsResults,
    required TResult Function(Costs value) costs,
    required TResult Function(Cost value) cost,
  }) {
    return cost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
  }) {
    return cost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocationResultData value)? locationResultData,
    TResult Function(LocationStatusData value)? locationStatusData,
    TResult Function(CostsResults value)? costsResults,
    TResult Function(Costs value)? costs,
    TResult Function(Cost value)? cost,
    required TResult orElse(),
  }) {
    if (cost != null) {
      return cost(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CostToJson(this);
  }
}

abstract class Cost implements LocationData {
  factory Cost(int value, String etd, String note) = _$Cost;

  factory Cost.fromJson(Map<String, dynamic> json) = _$Cost.fromJson;

  int get value;
  String get etd;
  String get note;
  @JsonKey(ignore: true)
  $CostCopyWith<Cost> get copyWith => throw _privateConstructorUsedError;
}
