// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_local_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoLocalEntity _$MemoLocalEntityFromJson(Map<String, dynamic> json) {
  return _MemoLocalEntity.fromJson(json);
}

/// @nodoc
mixin _$MemoLocalEntity {
  String get uuid => throw _privateConstructorUsedError;
  MemoFieldsEntity get fields => throw _privateConstructorUsedError;
  String get createTime => throw _privateConstructorUsedError;

  /// Serializes this MemoLocalEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoLocalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoLocalEntityCopyWith<MemoLocalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoLocalEntityCopyWith<$Res> {
  factory $MemoLocalEntityCopyWith(
          MemoLocalEntity value, $Res Function(MemoLocalEntity) then) =
      _$MemoLocalEntityCopyWithImpl<$Res, MemoLocalEntity>;
  @useResult
  $Res call({String uuid, MemoFieldsEntity fields, String createTime});

  $MemoFieldsEntityCopyWith<$Res> get fields;
}

/// @nodoc
class _$MemoLocalEntityCopyWithImpl<$Res, $Val extends MemoLocalEntity>
    implements $MemoLocalEntityCopyWith<$Res> {
  _$MemoLocalEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoLocalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? fields = null,
    Object? createTime = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as MemoFieldsEntity,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of MemoLocalEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoFieldsEntityCopyWith<$Res> get fields {
    return $MemoFieldsEntityCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoLocalEntityImplCopyWith<$Res>
    implements $MemoLocalEntityCopyWith<$Res> {
  factory _$$MemoLocalEntityImplCopyWith(_$MemoLocalEntityImpl value,
          $Res Function(_$MemoLocalEntityImpl) then) =
      __$$MemoLocalEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, MemoFieldsEntity fields, String createTime});

  @override
  $MemoFieldsEntityCopyWith<$Res> get fields;
}

/// @nodoc
class __$$MemoLocalEntityImplCopyWithImpl<$Res>
    extends _$MemoLocalEntityCopyWithImpl<$Res, _$MemoLocalEntityImpl>
    implements _$$MemoLocalEntityImplCopyWith<$Res> {
  __$$MemoLocalEntityImplCopyWithImpl(
      _$MemoLocalEntityImpl _value, $Res Function(_$MemoLocalEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoLocalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? fields = null,
    Object? createTime = null,
  }) {
    return _then(_$MemoLocalEntityImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as MemoFieldsEntity,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoLocalEntityImpl implements _MemoLocalEntity {
  const _$MemoLocalEntityImpl(
      {required this.uuid, required this.fields, required this.createTime});

  factory _$MemoLocalEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoLocalEntityImplFromJson(json);

  @override
  final String uuid;
  @override
  final MemoFieldsEntity fields;
  @override
  final String createTime;

  @override
  String toString() {
    return 'MemoLocalEntity(uuid: $uuid, fields: $fields, createTime: $createTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoLocalEntityImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.fields, fields) || other.fields == fields) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, fields, createTime);

  /// Create a copy of MemoLocalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoLocalEntityImplCopyWith<_$MemoLocalEntityImpl> get copyWith =>
      __$$MemoLocalEntityImplCopyWithImpl<_$MemoLocalEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoLocalEntityImplToJson(
      this,
    );
  }
}

abstract class _MemoLocalEntity implements MemoLocalEntity {
  const factory _MemoLocalEntity(
      {required final String uuid,
      required final MemoFieldsEntity fields,
      required final String createTime}) = _$MemoLocalEntityImpl;

  factory _MemoLocalEntity.fromJson(Map<String, dynamic> json) =
      _$MemoLocalEntityImpl.fromJson;

  @override
  String get uuid;
  @override
  MemoFieldsEntity get fields;
  @override
  String get createTime;

  /// Create a copy of MemoLocalEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoLocalEntityImplCopyWith<_$MemoLocalEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
