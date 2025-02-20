// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoEntity _$MemoEntityFromJson(Map<String, dynamic> json) {
  return _MemoEntity.fromJson(json);
}

/// @nodoc
mixin _$MemoEntity {
  String get name => throw _privateConstructorUsedError;
  MemoFields get fields => throw _privateConstructorUsedError;
  String get createTime => throw _privateConstructorUsedError;
  String get updateTime => throw _privateConstructorUsedError;

  /// Serializes this MemoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoEntityCopyWith<MemoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoEntityCopyWith<$Res> {
  factory $MemoEntityCopyWith(
          MemoEntity value, $Res Function(MemoEntity) then) =
      _$MemoEntityCopyWithImpl<$Res, MemoEntity>;
  @useResult
  $Res call(
      {String name, MemoFields fields, String createTime, String updateTime});

  $MemoFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$MemoEntityCopyWithImpl<$Res, $Val extends MemoEntity>
    implements $MemoEntityCopyWith<$Res> {
  _$MemoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoEntity
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
              as MemoFields,
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

  /// Create a copy of MemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemoFieldsCopyWith<$Res> get fields {
    return $MemoFieldsCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoEntityImplCopyWith<$Res>
    implements $MemoEntityCopyWith<$Res> {
  factory _$$MemoEntityImplCopyWith(
          _$MemoEntityImpl value, $Res Function(_$MemoEntityImpl) then) =
      __$$MemoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, MemoFields fields, String createTime, String updateTime});

  @override
  $MemoFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$MemoEntityImplCopyWithImpl<$Res>
    extends _$MemoEntityCopyWithImpl<$Res, _$MemoEntityImpl>
    implements _$$MemoEntityImplCopyWith<$Res> {
  __$$MemoEntityImplCopyWithImpl(
      _$MemoEntityImpl _value, $Res Function(_$MemoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fields = null,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_$MemoEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as MemoFields,
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
class _$MemoEntityImpl implements _MemoEntity {
  const _$MemoEntityImpl(
      {required this.name,
      required this.fields,
      required this.createTime,
      required this.updateTime});

  factory _$MemoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoEntityImplFromJson(json);

  @override
  final String name;
  @override
  final MemoFields fields;
  @override
  final String createTime;
  @override
  final String updateTime;

  @override
  String toString() {
    return 'MemoEntity(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoEntityImpl &&
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

  /// Create a copy of MemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoEntityImplCopyWith<_$MemoEntityImpl> get copyWith =>
      __$$MemoEntityImplCopyWithImpl<_$MemoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoEntityImplToJson(
      this,
    );
  }
}

abstract class _MemoEntity implements MemoEntity {
  const factory _MemoEntity(
      {required final String name,
      required final MemoFields fields,
      required final String createTime,
      required final String updateTime}) = _$MemoEntityImpl;

  factory _MemoEntity.fromJson(Map<String, dynamic> json) =
      _$MemoEntityImpl.fromJson;

  @override
  String get name;
  @override
  MemoFields get fields;
  @override
  String get createTime;
  @override
  String get updateTime;

  /// Create a copy of MemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoEntityImplCopyWith<_$MemoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
