import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:latihan_clean_code/application/location/location_failure.dart';
import 'package:latihan_clean_code/domain/location/location_interface.dart';
import 'package:latihan_clean_code/domain/location/location_req.dart';
import 'package:latihan_clean_code/domain/location/province_data.dart';

@Injectable(as: LocationInterface)
class LocationRepository extends LocationInterface {
  Dio dio;
  LocationRepository({required this.dio});
  @override
  Future<Either<LocationFailure, ProvinceResponse>>
      getAllLocationFromRajaOngkir() async {
    dio = Dio();
    Response response;
    try {
      response = await dio.get(
        "https://api.rajaongkir.com/starter/province",
        options: Options(
          headers: {"key": "19987e71789b67a541ecdb232d7eca79"},
        ),
      );
      final _result = response.data['rajaongkir'];
      final data = ProvinceResponse.fromJson(_result);
      return right(data);
    } on DioError catch (e) {
      switch (e.response!.statusCode) {
        case 400:
          final errorData = e.response!.data['rajaongkir']['status'];
          final data = LocationStatusData.fromJson(errorData);
          print(data.description);
          return left(
            LocationFailure.badRequest(data.description),
          );
        case 404:
          return left(
            LocationFailure.notFound("Not Found"),
          );
        default:
          return left(
            LocationFailure.serverError(),
          );
      }
    }
  }

  @override
  Future<Either<LocationFailure, CityResponse>> getCityByProvider(
      {required String provinceId}) async {
    dio = Dio();
    Response response;
    try {
      response = await dio.get(
        "https://api.rajaongkir.com/starter/city",
        options: Options(
          headers: {"key": "19987e71789b67a541ecdb232d7eca79"},
        ),
        queryParameters: {"province": provinceId},
      );
      final _result = response.data['rajaongkir'];
      final data = CityResponse.fromJson(_result);
      print(data);
      return right(data);
    } on DioError catch (e) {
      switch (e.response!.statusCode) {
        case 400:
          final errorData = e.response!.data['rajaongkir']['status'];
          final data = LocationStatusData.fromJson(errorData);
          return left(
            LocationFailure.badRequest(data.description),
          );
        case 404:
          return left(
            LocationFailure.notFound("Not Found"),
          );
        default:
          return left(
            LocationFailure.serverError(),
          );
      }
    }
  }

  @override
  Future<Either<LocationFailure, CostsResponse>> getCost(
      {required LocationResultData fromData,
      required LocationResultData toData,
      required int weight,
      required String courier}) async {
    dio = Dio();
    Response response;
    try {
      response = await dio.post("https://api.rajaongkir.com/starter/cost",
          data: {
            "origin": fromData.cityId.toString(),
            "destination": toData.cityId.toString(),
            "weight": weight.toString(),
            "courier": courier
          },
          options:
              Options(headers: {"key": "19987e71789b67a541ecdb232d7eca79"}));
      final _result = response.data['rajaongkir'];

      final data = CostsResponse.fromJson(_result);
      print(data.results.length.toString() + "Panjang Ongkos kirim");
      return right(data);
    } on DioError catch (e) {
      print("data exception");
      switch (e.response?.statusCode) {
        case 400:
          final errorData = e.response!.data['rajaongkir']['status'];
          final data = LocationStatusData.fromJson(errorData);
          print("length of cost $data");
          return left(
            LocationFailure.badRequest(data.description),
          );
        case 404:
          return left(
            LocationFailure.notFound("Not Found"),
          );
        default:
          return left(
            LocationFailure.serverError(),
          );
      }
    }
  }
}
