import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_fields.freezed.dart';
part 'memo_fields.g.dart';

@freezed
class MemoFields with _$MemoFields {
  const factory MemoFields({
    required FieldStringValue uuid,
    required FieldStringValue email,
    required FieldStringValue title,
    required FieldStringValue image,
    required FieldStringValue location,
    required FieldStringValue date,
    required FieldStringValue waterType,
    required FieldStringValue fishType,
    required FieldStringValue fishSize,
    required FieldStringValue content,
    required FieldStringValue createTime,
    required FieldStringValue coords,
  }) = _MemoFields;

  factory MemoFields.fromJson(Map<String, dynamic> json) =>
      _$MemoFieldsFromJson(json);

  static const empty = MemoFields(
    uuid: FieldStringValue.empty,
    email: FieldStringValue.empty,
    title: FieldStringValue.empty,
    image: FieldStringValue.empty,
    location: FieldStringValue.empty,
    date: FieldStringValue.empty,
    waterType: FieldStringValue.empty,
    fishType: FieldStringValue.empty,
    fishSize: FieldStringValue.empty,
    content: FieldStringValue.empty,
    createTime: FieldStringValue.empty,
    coords: FieldStringValue.empty,
  );
}

@freezed
class FieldStringValue with _$FieldStringValue {
  const factory FieldStringValue({
    @Default('') String stringValue,
  }) = _FieldStringValue;

  factory FieldStringValue.fromJson(Map<String, dynamic> json) =>
      _$FieldStringValueFromJson(json);

  static const empty = FieldStringValue(stringValue: '');
}

@freezed
class FieldIntegerValue with _$FieldIntegerValue {
  const factory FieldIntegerValue({
    required int integerValue,
  }) = _FieldIntegerValue;

  factory FieldIntegerValue.fromJson(Map<String, dynamic> json) =>
      _$FieldIntegerValueFromJson(json);
}

@freezed
class FieldDoubleValue with _$FieldDoubleValue {
  const factory FieldDoubleValue({
    required double doubleValue,
  }) = _FieldDoubleValue;

  factory FieldDoubleValue.fromJson(Map<String, dynamic> json) =>
      _$FieldDoubleValueFromJson(json);
}
