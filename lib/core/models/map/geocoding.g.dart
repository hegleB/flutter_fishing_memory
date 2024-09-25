// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeocodingImpl _$$GeocodingImplFromJson(Map<String, dynamic> json) =>
    _$GeocodingImpl(
      roadAddress: json['roadAddress'] as String? ?? '',
      jibunAddress: json['jibunAddress'] as String? ?? '',
      englishAddress: json['englishAddress'] as String? ?? '',
      addressElements: (json['addressElements'] as List<dynamic>?)
              ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Region>[],
      x: json['x'] as String? ?? '',
      y: json['y'] as String? ?? '',
      coords: json['coords'] as String? ?? '',
      distance: (json['distance'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$GeocodingImplToJson(_$GeocodingImpl instance) =>
    <String, dynamic>{
      'roadAddress': instance.roadAddress,
      'jibunAddress': instance.jibunAddress,
      'englishAddress': instance.englishAddress,
      'addressElements': instance.addressElements,
      'x': instance.x,
      'y': instance.y,
      'coords': instance.coords,
      'distance': instance.distance,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      totlaCount: json['totlaCount'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'totlaCount': instance.totlaCount,
      'page': instance.page,
      'count': instance.count,
    };

_$AddressesImpl _$$AddressesImplFromJson(Map<String, dynamic> json) =>
    _$AddressesImpl(
      roadAddress: json['roadAddress'] as String? ?? '',
      jibunAddress: json['jibunAddress'] as String? ?? '',
      englishAddresst: json['englishAddresst'] as String? ?? '',
      addressElements: (json['addressElements'] as List<dynamic>?)
              ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      x: json['x'] as String? ?? '',
      y: json['y'] as String? ?? '',
      distance: (json['distance'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$AddressesImplToJson(_$AddressesImpl instance) =>
    <String, dynamic>{
      'roadAddress': instance.roadAddress,
      'jibunAddress': instance.jibunAddress,
      'englishAddresst': instance.englishAddresst,
      'addressElements': instance.addressElements,
      'x': instance.x,
      'y': instance.y,
      'distance': instance.distance,
    };
