// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoImpl _$$MemoImplFromJson(Map<String, dynamic> json) => _$MemoImpl(
      fields: json['fields'] == null
          ? MemoFields.empty
          : MemoFields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String,
    );

Map<String, dynamic> _$$MemoImplToJson(_$MemoImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'createTime': instance.createTime,
    };
