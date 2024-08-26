import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_fields_entity.freezed.dart';
part 'sign_up_fields_entity.g.dart';

@freezed
class SignUpFieldsEntity with _$SignUpFieldsEntity {
  const factory SignUpFieldsEntity({
    required SignUpFieldsEntity fields,
  }) = _SignUpFieldsEntity;

  factory SignUpFieldsEntity.fromJson(Map<String, dynamic> json) =>
      _$SignUpFieldsEntityFromJson(json);
}
