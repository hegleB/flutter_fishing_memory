import 'package:freezed_annotation/freezed_annotation.dart';
import 'email.dart';
import 'token.dart';

part 'sign_up_fields.freezed.dart';
part 'sign_up_fields.g.dart';

@freezed
class SignUpFields with _$SignUpFields {
  const factory SignUpFields({
    required Email email,
    required Token token,
  }) = _SignUpFields;

  factory SignUpFields.fromJson(Map<String, dynamic> json) =>
      _$SignUpFieldsFromJson(json);
}
