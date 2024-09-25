// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReverseGeocodingImpl _$$ReverseGeocodingImplFromJson(
        Map<String, dynamic> json) =>
    _$ReverseGeocodingImpl(
      name: json['name'] as String? ?? '',
      code: (json['code'] as num?)?.toInt() ?? 0,
      areaName: json['areaName'] as String? ?? '',
    );

Map<String, dynamic> _$$ReverseGeocodingImplToJson(
        _$ReverseGeocodingImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'areaName': instance.areaName,
    };

_$StatusImpl _$$StatusImplFromJson(Map<String, dynamic> json) => _$StatusImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$StatusImplToJson(_$StatusImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'message': instance.message,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      name: json['name'] as String? ?? '',
      code: json['code'] == null
          ? const Code()
          : Code.fromJson(json['code'] as Map<String, dynamic>),
      region: json['region'] == null
          ? const RegionEntity()
          : RegionEntity.fromJson(json['region'] as Map<String, dynamic>),
      land: json['land'] == null
          ? const Land()
          : Land.fromJson(json['land'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'region': instance.region,
      'land': instance.land,
    };

_$CodeImpl _$$CodeImplFromJson(Map<String, dynamic> json) => _$CodeImpl(
      id: json['id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      mappingId: json['mappingId'] as String? ?? '',
    );

Map<String, dynamic> _$$CodeImplToJson(_$CodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'mappingId': instance.mappingId,
    };

_$RegionEntityImpl _$$RegionEntityImplFromJson(Map<String, dynamic> json) =>
    _$RegionEntityImpl(
      area0: json['area0'] == null
          ? const Area()
          : Area.fromJson(json['area0'] as Map<String, dynamic>),
      area1: json['area1'] == null
          ? const Area()
          : Area.fromJson(json['area1'] as Map<String, dynamic>),
      area2: json['area2'] == null
          ? const Area()
          : Area.fromJson(json['area2'] as Map<String, dynamic>),
      area3: json['area3'] == null
          ? const Area()
          : Area.fromJson(json['area3'] as Map<String, dynamic>),
      area4: json['area4'] == null
          ? const Area()
          : Area.fromJson(json['area4'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegionEntityImplToJson(_$RegionEntityImpl instance) =>
    <String, dynamic>{
      'area0': instance.area0,
      'area1': instance.area1,
      'area2': instance.area2,
      'area3': instance.area3,
      'area4': instance.area4,
    };

_$LandImpl _$$LandImplFromJson(Map<String, dynamic> json) => _$LandImpl(
      type: json['type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      number1: json['number1'] as String? ?? '',
      number2: json['number2'] as String? ?? '',
      coords: json['coords'] == null
          ? const Coords()
          : Coords.fromJson(json['coords'] as Map<String, dynamic>),
      addition0: json['addition0'] == null
          ? const Addition()
          : Addition.fromJson(json['addition0'] as Map<String, dynamic>),
      addition1: json['addition1'] == null
          ? const Addition()
          : Addition.fromJson(json['addition1'] as Map<String, dynamic>),
      addition2: json['addition2'] == null
          ? const Addition()
          : Addition.fromJson(json['addition2'] as Map<String, dynamic>),
      addition3: json['addition3'] == null
          ? const Addition()
          : Addition.fromJson(json['addition3'] as Map<String, dynamic>),
      addition4: json['addition4'] == null
          ? const Addition()
          : Addition.fromJson(json['addition4'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LandImplToJson(_$LandImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'number1': instance.number1,
      'number2': instance.number2,
      'coords': instance.coords,
      'addition0': instance.addition0,
      'addition1': instance.addition1,
      'addition2': instance.addition2,
      'addition3': instance.addition3,
      'addition4': instance.addition4,
    };

_$AdditionImpl _$$AdditionImplFromJson(Map<String, dynamic> json) =>
    _$AdditionImpl(
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$$AdditionImplToJson(_$AdditionImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

_$AreaImpl _$$AreaImplFromJson(Map<String, dynamic> json) => _$AreaImpl(
      name: json['name'] as String? ?? '',
      coords: json['coords'] == null
          ? const Coords()
          : Coords.fromJson(json['coords'] as Map<String, dynamic>),
      alias: json['alias'] as String? ?? '',
    );

Map<String, dynamic> _$$AreaImplToJson(_$AreaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'coords': instance.coords,
      'alias': instance.alias,
    };

_$CoordsImpl _$$CoordsImplFromJson(Map<String, dynamic> json) => _$CoordsImpl(
      center: json['center'] == null
          ? const Center()
          : Center.fromJson(json['center'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoordsImplToJson(_$CoordsImpl instance) =>
    <String, dynamic>{
      'center': instance.center,
    };

_$CenterImpl _$$CenterImplFromJson(Map<String, dynamic> json) => _$CenterImpl(
      crs: json['crs'] as String? ?? '',
      x: (json['x'] as num?)?.toDouble() ?? 0,
      y: (json['y'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$CenterImplToJson(_$CenterImpl instance) =>
    <String, dynamic>{
      'crs': instance.crs,
      'x': instance.x,
      'y': instance.y,
    };
