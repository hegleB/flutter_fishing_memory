// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpFieldsImpl _$$SignUpFieldsImplFromJson(Map<String, dynamic> json) =>
    _$SignUpFieldsImpl(
      email: Email.fromJson(json['email'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpFieldsImplToJson(_$SignUpFieldsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'token': instance.token,
    };
