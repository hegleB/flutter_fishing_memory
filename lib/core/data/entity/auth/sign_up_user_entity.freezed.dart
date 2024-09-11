// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpUserEntity _$SignUpUserEntityFromJson(Map<String, dynamic> json) {
  return _SignUpUserEntity.fromJson(json);
}

/// @nodoc
mixin _$SignUpUserEntity {
  String get name =>
      throw _privateConstructorUsedError; // required SignUpFields fields,
  String get createTime => throw _privateConstructorUsedError;
  String get updateTime => throw _privateConstructorUsedError;

  /// Serializes this SignUpUserEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpUserEntityCopyWith<SignUpUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpUserEntityCopyWith<$Res> {
  factory $SignUpUserEntityCopyWith(
          SignUpUserEntity value, $Res Function(SignUpUserEntity) then) =
      _$SignUpUserEntityCopyWithImpl<$Res, SignUpUserEntity>;
  @useResult
  $Res call({String name, String createTime, String updateTime});
}

/// @nodoc
class _$SignUpUserEntityCopyWithImpl<$Res, $Val extends SignUpUserEntity>
    implements $SignUpUserEntityCopyWith<$Res> {
  _$SignUpUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$SignUpUserEntityImplCopyWith<$Res>
    implements $SignUpUserEntityCopyWith<$Res> {
  factory _$$SignUpUserEntityImplCopyWith(_$SignUpUserEntityImpl value,
          $Res Function(_$SignUpUserEntityImpl) then) =
      __$$SignUpUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String createTime, String updateTime});
}

/// @nodoc
class __$$SignUpUserEntityImplCopyWithImpl<$Res>
    extends _$SignUpUserEntityCopyWithImpl<$Res, _$SignUpUserEntityImpl>
    implements _$$SignUpUserEntityImplCopyWith<$Res> {
  __$$SignUpUserEntityImplCopyWithImpl(_$SignUpUserEntityImpl _value,
      $Res Function(_$SignUpUserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_$SignUpUserEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$SignUpUserEntityImpl implements _SignUpUserEntity {
  const _$SignUpUserEntityImpl(
      {required this.name, required this.createTime, required this.updateTime});

  factory _$SignUpUserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpUserEntityImplFromJson(json);

  @override
  final String name;
// required SignUpFields fields,
  @override
  final String createTime;
  @override
  final String updateTime;

  @override
  String toString() {
    return 'SignUpUserEntity(name: $name, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpUserEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, createTime, updateTime);

  /// Create a copy of SignUpUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpUserEntityImplCopyWith<_$SignUpUserEntityImpl> get copyWith =>
      __$$SignUpUserEntityImplCopyWithImpl<_$SignUpUserEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpUserEntityImplToJson(
      this,
    );
  }
}

abstract class _SignUpUserEntity implements SignUpUserEntity {
  const factory _SignUpUserEntity(
      {required final String name,
      required final String createTime,
      required final String updateTime}) = _$SignUpUserEntityImpl;

  factory _SignUpUserEntity.fromJson(Map<String, dynamic> json) =
      _$SignUpUserEntityImpl.fromJson;

  @override
  String get name; // required SignUpFields fields,
  @override
  String get createTime;
  @override
  String get updateTime;

  /// Create a copy of SignUpUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpUserEntityImplCopyWith<_$SignUpUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
