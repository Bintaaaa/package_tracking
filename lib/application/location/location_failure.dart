import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_failure.freezed.dart';

@freezed
abstract class LocationFailure with _$LocationFailure {
  const factory LocationFailure.notFound(String? message) = _NotFound;
  const factory LocationFailure.badRequest(String? message) = _BadRequest;
  const factory LocationFailure.serverError() = _ServerError;
}
