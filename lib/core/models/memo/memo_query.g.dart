// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoQueryImpl _$$MemoQueryImplFromJson(Map<String, dynamic> json) =>
    _$MemoQueryImpl(
      structuredQuery: StructuredQuery.fromJson(
          json['structuredQuery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemoQueryImplToJson(_$MemoQueryImpl instance) =>
    <String, dynamic>{
      'structuredQuery': instance.structuredQuery,
    };

_$StructuredQueryImpl _$$StructuredQueryImplFromJson(
        Map<String, dynamic> json) =>
    _$StructuredQueryImpl(
      from: (json['from'] as List<dynamic>)
          .map((e) => CollectionId.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderBy: (json['orderBy'] as List<dynamic>)
          .map((e) => OrderBy.fromJson(e as Map<String, dynamic>))
          .toList(),
      where: Where.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StructuredQueryImplToJson(
        _$StructuredQueryImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'orderBy': instance.orderBy,
      'where': instance.where,
    };

_$CollectionIdImpl _$$CollectionIdImplFromJson(Map<String, dynamic> json) =>
    _$CollectionIdImpl(
      collectionId: json['collectionId'] as String,
    );

Map<String, dynamic> _$$CollectionIdImplToJson(_$CollectionIdImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
    };

_$WhereImpl _$$WhereImplFromJson(Map<String, dynamic> json) => _$WhereImpl(
      compositeFilter: CompositeFilter.fromJson(
          json['compositeFilter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WhereImplToJson(_$WhereImpl instance) =>
    <String, dynamic>{
      'compositeFilter': instance.compositeFilter,
    };

_$OrderByImpl _$$OrderByImplFromJson(Map<String, dynamic> json) =>
    _$OrderByImpl(
      field: FieldPath.fromJson(json['field'] as Map<String, dynamic>),
      direction: json['direction'] as String,
    );

Map<String, dynamic> _$$OrderByImplToJson(_$OrderByImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'direction': instance.direction,
    };

_$CompositeFilterImpl _$$CompositeFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$CompositeFilterImpl(
      op: json['op'] as String,
      filters: (json['filters'] as List<dynamic>)
          .map((e) => Filter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompositeFilterImplToJson(
        _$CompositeFilterImpl instance) =>
    <String, dynamic>{
      'op': instance.op,
      'filters': instance.filters,
    };

_$FilterImpl _$$FilterImplFromJson(Map<String, dynamic> json) => _$FilterImpl(
      fieldFilter:
          FieldFilter.fromJson(json['fieldFilter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FilterImplToJson(_$FilterImpl instance) =>
    <String, dynamic>{
      'fieldFilter': instance.fieldFilter,
    };

_$FieldFilterImpl _$$FieldFilterImplFromJson(Map<String, dynamic> json) =>
    _$FieldFilterImpl(
      field: FieldPath.fromJson(json['field'] as Map<String, dynamic>),
      op: json['op'] as String,
      value: Value.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FieldFilterImplToJson(_$FieldFilterImpl instance) =>
    <String, dynamic>{
      'field': instance.field,
      'op': instance.op,
      'value': instance.value,
    };

_$FieldPathImpl _$$FieldPathImplFromJson(Map<String, dynamic> json) =>
    _$FieldPathImpl(
      fieldPath: json['fieldPath'] as String,
    );

Map<String, dynamic> _$$FieldPathImplToJson(_$FieldPathImpl instance) =>
    <String, dynamic>{
      'fieldPath': instance.fieldPath,
    };

_$ValueImpl _$$ValueImplFromJson(Map<String, dynamic> json) => _$ValueImpl(
      stringValue: json['stringValue'] as String,
    );

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };
