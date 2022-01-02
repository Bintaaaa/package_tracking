import 'package:dartz/dartz.dart';
import 'package:latihan_clean_code/application/location/location_failure.dart';
import 'package:latihan_clean_code/domain/location/location_req.dart';
import 'package:latihan_clean_code/domain/location/province_data.dart';

abstract class LocationInterface {
  Future<Either<LocationFailure, ProvinceResponse>>
      getAllLocationFromRajaOngkir();

  Future<Either<LocationFailure, CityResponse>> getCityByProvider(
      {required String provinceId});

  Future<Either<LocationFailure, CostsResponse>> getCost({
    required LocationResultData fromData,
    required LocationResultData toData,
    required int weight,
    required String courier,
  });
}
