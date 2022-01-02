// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProvinceResponse _$$ProvinceResponseFromJson(Map<String, dynamic> json) =>
    _$ProvinceResponse(
      json['query'] as List<dynamic>,
      (json['results'] as List<dynamic>)
          .map((e) => LocationResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProvinceResponseToJson(_$ProvinceResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'results': instance.results,
      'status': instance.status,
      'runtimeType': instance.$type,
    };

_$CityResponse _$$CityResponseFromJson(Map<String, dynamic> json) =>
    _$CityResponse(
      json['query'],
      (json['results'] as List<dynamic>)
          .map((e) => LocationResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CityResponseToJson(_$CityResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'results': instance.results,
      'status': instance.status,
      'runtimeType': instance.$type,
    };

_$CostsResponse _$$CostsResponseFromJson(Map<String, dynamic> json) =>
    _$CostsResponse(
      json['query'],
      LocationStatusData.fromJson(json['status'] as Map<String, dynamic>),
      (json['results'] as List<dynamic>)
          .map((e) => CostsResults.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CostsResponseToJson(_$CostsResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'status': instance.status,
      'results': instance.results,
      'runtimeType': instance.$type,
    };
