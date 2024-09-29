// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoFieldsImpl _$$MemoFieldsImplFromJson(Map<String, dynamic> json) =>
    _$MemoFieldsImpl(
      uuid: FieldStringValue.fromJson(json['uuid'] as Map<String, dynamic>),
      email: FieldStringValue.fromJson(json['email'] as Map<String, dynamic>),
      title: FieldStringValue.fromJson(json['title'] as Map<String, dynamic>),
      image: FieldStringValue.fromJson(json['image'] as Map<String, dynamic>),
      location:
          FieldStringValue.fromJson(json['location'] as Map<String, dynamic>),
      date: FieldStringValue.fromJson(json['date'] as Map<String, dynamic>),
      waterType:
          FieldStringValue.fromJson(json['waterType'] as Map<String, dynamic>),
      fishType:
          FieldStringValue.fromJson(json['fishType'] as Map<String, dynamic>),
      fishSize:
          FieldStringValue.fromJson(json['fishSize'] as Map<String, dynamic>),
      content:
          FieldStringValue.fromJson(json['content'] as Map<String, dynamic>),
      createTime:
          FieldStringValue.fromJson(json['createTime'] as Map<String, dynamic>),
      coords: FieldStringValue.fromJson(json['coords'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemoFieldsImplToJson(_$MemoFieldsImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'email': instance.email,
      'title': instance.title,
      'image': instance.image,
      'location': instance.location,
      'date': instance.date,
      'waterType': instance.waterType,
      'fishType': instance.fishType,
      'fishSize': instance.fishSize,
      'content': instance.content,
      'createTime': instance.createTime,
      'coords': instance.coords,
    };

_$FieldStringValueImpl _$$FieldStringValueImplFromJson(
        Map<String, dynamic> json) =>
    _$FieldStringValueImpl(
      stringValue: json['stringValue'] as String? ?? '',
    );

Map<String, dynamic> _$$FieldStringValueImplToJson(
        _$FieldStringValueImpl instance) =>
    <String, dynamic>{
      'stringValue': instance.stringValue,
    };

_$FieldIntegerValueImpl _$$FieldIntegerValueImplFromJson(
        Map<String, dynamic> json) =>
    _$FieldIntegerValueImpl(
      integerValue: (json['integerValue'] as num).toInt(),
    );

Map<String, dynamic> _$$FieldIntegerValueImplToJson(
        _$FieldIntegerValueImpl instance) =>
    <String, dynamic>{
      'integerValue': instance.integerValue,
    };

_$FieldDoubleValueImpl _$$FieldDoubleValueImplFromJson(
        Map<String, dynamic> json) =>
    _$FieldDoubleValueImpl(
      doubleValue: (json['doubleValue'] as num).toDouble(),
    );

Map<String, dynamic> _$$FieldDoubleValueImplToJson(
        _$FieldDoubleValueImpl instance) =>
    <String, dynamic>{
      'doubleValue': instance.doubleValue,
    };
