import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latihan_clean_code/domain/location/province_data.dart';
part 'location_req.freezed.dart';
part 'location_req.g.dart';

@freezed
abstract class LocationReq with _$LocationReq {
  factory LocationReq.provinceResponse(
    List<dynamic> query,
    List<LocationResultData> results,
    LocationStatusData status,
  ) = ProvinceResponse;

  factory LocationReq.cityResponse(
    dynamic query,
    List<LocationResultData> results,
    LocationStatusData status,
  ) = CityResponse;

  factory LocationReq.costsResponse(
    dynamic query,
    LocationStatusData status,
    List<CostsResults> results,
  ) = CostsResponse;

  factory LocationReq.fromJson(Map<String, dynamic> json) =>
      _$LocationReqFromJson(json);
}
