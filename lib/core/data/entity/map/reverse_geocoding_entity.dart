import 'package:fishingmemory/core/models/map/reverse_geocoding.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reverse_geocoding_entity.freezed.dart';
part 'reverse_geocoding_entity.g.dart';

@freezed
class ReverseGeocodingEntity with _$ReverseGeocodingEntity {
  const factory ReverseGeocodingEntity({
    required Status status,
    required List<Results> results,
  }) = _ReverseGeocodingEntity;

  factory ReverseGeocodingEntity.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodingEntityFromJson(json);
}
