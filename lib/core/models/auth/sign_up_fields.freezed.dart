// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_fields.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpFields _$SignUpFieldsFromJson(Map<String, dynamic> json) {
  return _SignUpFields.fromJson(json);
}

/// @nodoc
mixin _$SignUpFields {
  Email get email => throw _privateConstructorUsedError;
  Token get token => throw _privateConstructorUsedError;

  /// Serializes this SignUpFields to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpFieldsCopyWith<SignUpFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFieldsCopyWith<$Res> {
  factory $SignUpFieldsCopyWith(
          SignUpFields value, $Res Function(SignUpFields) then) =
      _$SignUpFieldsCopyWithImpl<$Res, SignUpFields>;
  @useResult
  $Res call({Email email, Token token});

  $EmailCopyWith<$Res> get email;
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$SignUpFieldsCopyWithImpl<$Res, $Val extends SignUpFields>
    implements $SignUpFieldsCopyWith<$Res> {
  _$SignUpFieldsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ) as $Val);
  }

  /// Create a copy of SignUpFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmailCopyWith<$Res> get email {
    return $EmailCopyWith<$Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value) as $Val);
    });
  }

  /// Create a copy of SignUpFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpFieldsImplCopyWith<$Res>
    implements $SignUpFieldsCopyWith<$Res> {
  factory _$$SignUpFieldsImplCopyWith(
          _$SignUpFieldsImpl value, $Res Function(_$SignUpFieldsImpl) then) =
      __$$SignUpFieldsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, Token token});

  @override
  $EmailCopyWith<$Res> get email;
  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$SignUpFieldsImplCopyWithImpl<$Res>
    extends _$SignUpFieldsCopyWithImpl<$Res, _$SignUpFieldsImpl>
    implements _$$SignUpFieldsImplCopyWith<$Res> {
  __$$SignUpFieldsImplCopyWithImpl(
      _$SignUpFieldsImpl _value, $Res Function(_$SignUpFieldsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpFields
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? token = null,
  }) {
    return _then(_$SignUpFieldsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpFieldsImpl implements _SignUpFields {
  const _$SignUpFieldsImpl({required this.email, required this.token});

  factory _$SignUpFieldsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpFieldsImplFromJson(json);

  @override
  final Email email;
  @override
  final Token token;

  @override
  String toString() {
    return 'SignUpFields(email: $email, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFieldsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, token);

  /// Create a copy of SignUpFields
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFieldsImplCopyWith<_$SignUpFieldsImpl> get copyWith =>
      __$$SignUpFieldsImplCopyWithImpl<_$SignUpFieldsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpFieldsImplToJson(
      this,
    );
  }
}

abstract class _SignUpFields implements SignUpFields {
  const factory _SignUpFields(
      {required final Email email,
      required final Token token}) = _$SignUpFieldsImpl;

  factory _SignUpFields.fromJson(Map<String, dynamic> json) =
      _$SignUpFieldsImpl.fromJson;

  @override
  Email get email;
  @override
  Token get token;

  /// Create a copy of SignUpFields
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFieldsImplCopyWith<_$SignUpFieldsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
