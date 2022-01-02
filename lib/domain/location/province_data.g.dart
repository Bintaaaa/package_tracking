// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationResultData _$$LocationResultDataFromJson(Map<String, dynamic> json) =>
    _$LocationResultData(
      json['province_id'] as String,
      json['province'] as String,
      json['city_id'] as String?,
      json['type'] as String?,
      json['city_name'] as String?,
      json['postal_code'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationResultDataToJson(
        _$LocationResultData instance) =>
    <String, dynamic>{
      'province_id': instance.provinceId,
      'province': instance.province,
      'city_id': instance.cityId,
      'type': instance.type,
      'city_name': instance.cityName,
      'postal_code': instance.postalCode,
      'runtimeType': instance.$type,
    };

_$LocationStatusData _$$LocationStatusDataFromJson(Map<String, dynamic> json) =>
    _$LocationStatusData(
      json['code'] as int?,
      json['description'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationStatusDataToJson(
        _$LocationStatusData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$CostsResults _$$CostsResultsFromJson(Map<String, dynamic> json) =>
    _$CostsResults(
      json['code'] as String,
      json['name'] as String,
      (json['costs'] as List<dynamic>)
          .map((e) => Costs.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CostsResultsToJson(_$CostsResults instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'costs': instance.costs,
      'runtimeType': instance.$type,
    };

_$Costs _$$CostsFromJson(Map<String, dynamic> json) => _$Costs(
      json['service'] as String,
      json['description'] as String,
      (json['cost'] as List<dynamic>)
          .map((e) => Cost.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CostsToJson(_$Costs instance) => <String, dynamic>{
      'service': instance.service,
      'description': instance.description,
      'cost': instance.cost,
      'runtimeType': instance.$type,
    };

_$Cost _$$CostFromJson(Map<String, dynamic> json) => _$Cost(
      json['value'] as int,
      json['etd'] as String,
      json['note'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CostToJson(_$Cost instance) => <String, dynamic>{
      'value': instance.value,
      'etd': instance.etd,
      'note': instance.note,
      'runtimeType': instance.$type,
    };
