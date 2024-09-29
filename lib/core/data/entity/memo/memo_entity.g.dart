// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoEntityImpl _$$MemoEntityImplFromJson(Map<String, dynamic> json) =>
    _$MemoEntityImpl(
      name: json['name'] as String,
      fields: MemoFields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String,
      updateTime: json['updateTime'] as String,
    );

Map<String, dynamic> _$$MemoEntityImplToJson(_$MemoEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };
