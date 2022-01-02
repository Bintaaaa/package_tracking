import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:latihan_clean_code/application/location/location_failure.dart';
import 'package:latihan_clean_code/domain/location/location_interface.dart';
import 'package:latihan_clean_code/domain/location/location_req.dart';
import 'package:latihan_clean_code/domain/location/province_data.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc(this._locationInterface) : super(_Initial());
  final LocationInterface _locationInterface;
  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    yield* event.map(getLocationCity: (e) async* {
      yield LocationState.cityDataOptions(
          onLoading: true, cityProvince: none());
      final _result =
          await _locationInterface.getCityByProvider(provinceId: e.provinceId);
      print("result from city $_result");
      yield LocationState.cityDataOptions(
          onLoading: false, cityProvince: some(_result));
    }, getLocationProvince: (e) async* {
      yield LocationState.provinceDataOptions(
          onLoading: true, dataProvince: none());
      final _result = await _locationInterface.getAllLocationFromRajaOngkir();
      yield LocationState.provinceDataOptions(
        onLoading: false,
        dataProvince: some(_result),
      );
    }, getCosts: (e) async* {
      yield LocationState.costsDataOptions(onLoading: true, costData: none());
      final _result = await _locationInterface.getCost(
          fromData: e.fromData,
          toData: e.toData,
          weight: e.weight,
          courier: e.courier);
      yield LocationState.costsDataOptions(
        onLoading: false,
        costData: some(_result),
      );
    });
  }
}
