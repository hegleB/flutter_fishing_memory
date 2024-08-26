
import 'package:freezed_annotation/freezed_annotation.dart';
import 'sign_up_fields.dart';

part 'sign_up_user.freezed.dart';
part 'sign_up_user.g.dart';

@freezed
class SignUpUser with _$SignUpUser {
  const factory SignUpUser({
    required String name,
    required SignUpFields fields,
    required String createTime,
    required String updateTime,
  }) = _SignUpUser;

  factory SignUpUser.fromJson(Map<String, dynamic> json) =>
      _$SignUpUserFromJson(json);
}
