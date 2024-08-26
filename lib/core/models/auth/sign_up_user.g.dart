// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpUserImpl _$$SignUpUserImplFromJson(Map<String, dynamic> json) =>
    _$SignUpUserImpl(
      name: json['name'] as String,
      fields: SignUpFields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String,
      updateTime: json['updateTime'] as String,
    );

Map<String, dynamic> _$$SignUpUserImplToJson(_$SignUpUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };
