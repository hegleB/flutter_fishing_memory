// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocoding_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReverseGeocodingEntityImpl _$$ReverseGeocodingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReverseGeocodingEntityImpl(
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReverseGeocodingEntityImplToJson(
        _$ReverseGeocodingEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };
