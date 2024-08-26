// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpUser _$SignUpUserFromJson(Map<String, dynamic> json) {
  return _SignUpUser.fromJson(json);
}

/// @nodoc
mixin _$SignUpUser {
  String get name => throw _privateConstructorUsedError;
  SignUpFields get fields => throw _privateConstructorUsedError;
  String get createTime => throw _privateConstructorUsedError;
  String get updateTime => throw _privateConstructorUsedError;

  /// Serializes this SignUpUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpUserCopyWith<SignUpUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpUserCopyWith<$Res> {
  factory $SignUpUserCopyWith(
          SignUpUser value, $Res Function(SignUpUser) then) =
      _$SignUpUserCopyWithImpl<$Res, SignUpUser>;
  @useResult
  $Res call(
      {String name, SignUpFields fields, String createTime, String updateTime});

  $SignUpFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$SignUpUserCopyWithImpl<$Res, $Val extends SignUpUser>
    implements $SignUpUserCopyWith<$Res> {
  _$SignUpUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fields = null,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as SignUpFields,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SignUpUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignUpFieldsCopyWith<$Res> get fields {
    return $SignUpFieldsCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpUserImplCopyWith<$Res>
    implements $SignUpUserCopyWith<$Res> {
  factory _$$SignUpUserImplCopyWith(
          _$SignUpUserImpl value, $Res Function(_$SignUpUserImpl) then) =
      __$$SignUpUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, SignUpFields fields, String createTime, String updateTime});

  @override
  $SignUpFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$SignUpUserImplCopyWithImpl<$Res>
    extends _$SignUpUserCopyWithImpl<$Res, _$SignUpUserImpl>
    implements _$$SignUpUserImplCopyWith<$Res> {
  __$$SignUpUserImplCopyWithImpl(
      _$SignUpUserImpl _value, $Res Function(_$SignUpUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fields = null,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_$SignUpUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as SignUpFields,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
      updateTime: null == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpUserImpl implements _SignUpUser {
  const _$SignUpUserImpl(
      {required this.name,
      required this.fields,
      required this.createTime,
      required this.updateTime});

  factory _$SignUpUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpUserImplFromJson(json);

  @override
  final String name;
  @override
  final SignUpFields fields;
  @override
  final String createTime;
  @override
  final String updateTime;

  @override
  String toString() {
    return 'SignUpUser(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fields, fields) || other.fields == fields) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, fields, createTime, updateTime);

  /// Create a copy of SignUpUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpUserImplCopyWith<_$SignUpUserImpl> get copyWith =>
      __$$SignUpUserImplCopyWithImpl<_$SignUpUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpUserImplToJson(
      this,
    );
  }
}

abstract class _SignUpUser implements SignUpUser {
  const factory _SignUpUser(
      {required final String name,
      required final SignUpFields fields,
      required final String createTime,
      required final String updateTime}) = _$SignUpUserImpl;

  factory _SignUpUser.fromJson(Map<String, dynamic> json) =
      _$SignUpUserImpl.fromJson;

  @override
  String get name;
  @override
  SignUpFields get fields;
  @override
  String get createTime;
  @override
  String get updateTime;

  /// Create a copy of SignUpUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpUserImplCopyWith<_$SignUpUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
