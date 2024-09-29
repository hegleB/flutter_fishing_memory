// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_memo_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatedMemoEntityImpl _$$UpdatedMemoEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatedMemoEntityImpl(
      name: json['name'] as String,
      fields: MemoFields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String,
      updateTime: json['updateTime'] as String,
    );

Map<String, dynamic> _$$UpdatedMemoEntityImplToJson(
        _$UpdatedMemoEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };
