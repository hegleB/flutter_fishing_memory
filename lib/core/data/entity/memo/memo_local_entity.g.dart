// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_local_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoLocalEntityImpl _$$MemoLocalEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MemoLocalEntityImpl(
      uuid: json['uuid'] as String,
      fields: MemoFieldsEntity.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String,
    );

Map<String, dynamic> _$$MemoLocalEntityImplToJson(
        _$MemoLocalEntityImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'fields': instance.fields,
      'createTime': instance.createTime,
    };
