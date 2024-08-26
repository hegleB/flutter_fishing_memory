// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_fields_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpFieldsEntity _$SignUpFieldsEntityFromJson(Map<String, dynamic> json) {
  return _SignUpFieldsEntity.fromJson(json);
}

/// @nodoc
mixin _$SignUpFieldsEntity {
  SignUpFieldsEntity get fields => throw _privateConstructorUsedError;

  /// Serializes this SignUpFieldsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignUpFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpFieldsEntityCopyWith<SignUpFieldsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFieldsEntityCopyWith<$Res> {
  factory $SignUpFieldsEntityCopyWith(
          SignUpFieldsEntity value, $Res Function(SignUpFieldsEntity) then) =
      _$SignUpFieldsEntityCopyWithImpl<$Res, SignUpFieldsEntity>;
  @useResult
  $Res call({SignUpFieldsEntity fields});

  $SignUpFieldsEntityCopyWith<$Res> get fields;
}

/// @nodoc
class _$SignUpFieldsEntityCopyWithImpl<$Res, $Val extends SignUpFieldsEntity>
    implements $SignUpFieldsEntityCopyWith<$Res> {
  _$SignUpFieldsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as SignUpFieldsEntity,
    ) as $Val);
  }

  /// Create a copy of SignUpFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignUpFieldsEntityCopyWith<$Res> get fields {
    return $SignUpFieldsEntityCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpFieldsEntityImplCopyWith<$Res>
    implements $SignUpFieldsEntityCopyWith<$Res> {
  factory _$$SignUpFieldsEntityImplCopyWith(_$SignUpFieldsEntityImpl value,
          $Res Function(_$SignUpFieldsEntityImpl) then) =
      __$$SignUpFieldsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SignUpFieldsEntity fields});

  @override
  $SignUpFieldsEntityCopyWith<$Res> get fields;
}

/// @nodoc
class __$$SignUpFieldsEntityImplCopyWithImpl<$Res>
    extends _$SignUpFieldsEntityCopyWithImpl<$Res, _$SignUpFieldsEntityImpl>
    implements _$$SignUpFieldsEntityImplCopyWith<$Res> {
  __$$SignUpFieldsEntityImplCopyWithImpl(_$SignUpFieldsEntityImpl _value,
      $Res Function(_$SignUpFieldsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_$SignUpFieldsEntityImpl(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as SignUpFieldsEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpFieldsEntityImpl implements _SignUpFieldsEntity {
  const _$SignUpFieldsEntityImpl({required this.fields});

  factory _$SignUpFieldsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpFieldsEntityImplFromJson(json);

  @override
  final SignUpFieldsEntity fields;

  @override
  String toString() {
    return 'SignUpFieldsEntity(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFieldsEntityImpl &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  /// Create a copy of SignUpFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpFieldsEntityImplCopyWith<_$SignUpFieldsEntityImpl> get copyWith =>
      __$$SignUpFieldsEntityImplCopyWithImpl<_$SignUpFieldsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpFieldsEntityImplToJson(
      this,
    );
  }
}

abstract class _SignUpFieldsEntity implements SignUpFieldsEntity {
  const factory _SignUpFieldsEntity(
      {required final SignUpFieldsEntity fields}) = _$SignUpFieldsEntityImpl;

  factory _SignUpFieldsEntity.fromJson(Map<String, dynamic> json) =
      _$SignUpFieldsEntityImpl.fromJson;

  @override
  SignUpFieldsEntity get fields;

  /// Create a copy of SignUpFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpFieldsEntityImplCopyWith<_$SignUpFieldsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
