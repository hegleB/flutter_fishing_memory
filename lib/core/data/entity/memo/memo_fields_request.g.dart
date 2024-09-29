// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_fields_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoFieldsRequestImpl _$$MemoFieldsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$MemoFieldsRequestImpl(
      fields: json['fields'] == null
          ? MemoFields.empty
          : MemoFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MemoFieldsRequestImplToJson(
        _$MemoFieldsRequestImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
    };
