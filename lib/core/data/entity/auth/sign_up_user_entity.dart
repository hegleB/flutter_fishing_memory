import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_user_entity.freezed.dart';
part 'sign_up_user_entity.g.dart';

@freezed
class SignUpUserEntity with _$SignUpUserEntity {
  const factory SignUpUserEntity({
    required String name,
    // required SignUpFields fields,
    required String createTime,
    required String updateTime,
  }) = _SignUpUserEntity;

  factory SignUpUserEntity.fromJson(Map<String, dynamic> json) =>
      _$SignUpUserEntityFromJson(json);
}
