// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_query_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoQueryEntityImpl _$$MemoQueryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MemoQueryEntityImpl(
      document: Document.fromJson(json['document'] as Map<String, dynamic>),
      readTime: json['readTime'] as String,
    );

Map<String, dynamic> _$$MemoQueryEntityImplToJson(
        _$MemoQueryEntityImpl instance) =>
    <String, dynamic>{
      'document': instance.document,
      'readTime': instance.readTime,
    };
