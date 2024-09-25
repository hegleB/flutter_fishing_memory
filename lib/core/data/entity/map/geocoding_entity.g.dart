// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeocodingEntityImpl _$$GeocodingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GeocodingEntityImpl(
      status: json['status'] as String,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => Addresses.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$$GeocodingEntityImplToJson(
        _$GeocodingEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'meta': instance.meta,
      'addresses': instance.addresses,
      'errorMessage': instance.errorMessage,
    };
