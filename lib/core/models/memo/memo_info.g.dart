// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoInfoImpl _$$MemoInfoImplFromJson(Map<String, dynamic> json) =>
    _$MemoInfoImpl(
      uuid: json['uuid'] as String? ?? '',
      email: json['email'] as String? ?? '',
      title: json['title'] as String? ?? '',
      image: json['image'] as String? ?? '',
      location: json['location'] as String? ?? '',
      date: json['date'] as String? ?? '',
      waterType: json['waterType'] as String? ?? '',
      fishType: json['fishType'] as String? ?? '',
      fishSize: json['fishSize'] as String? ?? '',
      content: json['content'] as String? ?? '',
      createTime: json['createTime'] as String? ?? '',
      coords: json['coords'] as String? ?? '',
    );

Map<String, dynamic> _$$MemoInfoImplToJson(_$MemoInfoImpl instance) =>
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
