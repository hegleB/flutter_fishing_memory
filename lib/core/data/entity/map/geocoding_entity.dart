import 'package:fishingmemory/core/models/map/geocoding.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoding_entity.freezed.dart';
part 'geocoding_entity.g.dart';

@freezed
class GeocodingEntity with _$GeocodingEntity {
  const factory GeocodingEntity({
    required String status,
    required Meta meta,
    required List<Addresses> addresses,
    required String errorMessage,
  }) = _GeocodingEntity;

  factory GeocodingEntity.fromJson(Map<String, dynamic> json) =>
      _$GeocodingEntityFromJson(json);
}
