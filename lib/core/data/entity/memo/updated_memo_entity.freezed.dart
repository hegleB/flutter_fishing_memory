// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updated_memo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdatedMemoEntity _$UpdatedMemoEntityFromJson(Map<String, dynamic> json) {
  return _UpdatedMemoEntity.fromJson(json);
}

/// @nodoc
mixin _$UpdatedMemoEntity {
  String get name => throw _privateConstructorUsedError;
  MemoFields get fields => throw _privateConstructorUsedError;
  String get createTime => throw _privateConstructorUsedError;
  String get updateTime => throw _privateConstructorUsedError;

  /// Serializes this UpdatedMemoEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdatedMemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdatedMemoEntityCopyWith<UpdatedMemoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedMemoEntityCopyWith<$Res> {
  factory $UpdatedMemoEntityCopyWith(
          UpdatedMemoEntity value, $Res Function(UpdatedMemoEntity) then) =
      _$UpdatedMemoEntityCopyWithImpl<$Res, UpdatedMemoEntity>;
  @useResult
  $Res call(
      {String name, MemoFields fields, String createTime, String updateTime});

  $MemoFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$UpdatedMemoEntityCopyWithImpl<$Res, $Val extends UpdatedMemoEntity>
    implements $UpdatedMemoEntityCopyWith<$Res> {
  _$UpdatedMemoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdatedMemoEntity
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

  /// Create a copy of UpdatedMemoEntity
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
abstract class _$$UpdatedMemoEntityImplCopyWith<$Res>
    implements $UpdatedMemoEntityCopyWith<$Res> {
  factory _$$UpdatedMemoEntityImplCopyWith(_$UpdatedMemoEntityImpl value,
          $Res Function(_$UpdatedMemoEntityImpl) then) =
      __$$UpdatedMemoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, MemoFields fields, String createTime, String updateTime});

  @override
  $MemoFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$UpdatedMemoEntityImplCopyWithImpl<$Res>
    extends _$UpdatedMemoEntityCopyWithImpl<$Res, _$UpdatedMemoEntityImpl>
    implements _$$UpdatedMemoEntityImplCopyWith<$Res> {
  __$$UpdatedMemoEntityImplCopyWithImpl(_$UpdatedMemoEntityImpl _value,
      $Res Function(_$UpdatedMemoEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdatedMemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fields = null,
    Object? createTime = null,
    Object? updateTime = null,
  }) {
    return _then(_$UpdatedMemoEntityImpl(
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
class _$UpdatedMemoEntityImpl implements _UpdatedMemoEntity {
  const _$UpdatedMemoEntityImpl(
      {required this.name,
      required this.fields,
      required this.createTime,
      required this.updateTime});

  factory _$UpdatedMemoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdatedMemoEntityImplFromJson(json);

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
    return 'UpdatedMemoEntity(name: $name, fields: $fields, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedMemoEntityImpl &&
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

  /// Create a copy of UpdatedMemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedMemoEntityImplCopyWith<_$UpdatedMemoEntityImpl> get copyWith =>
      __$$UpdatedMemoEntityImplCopyWithImpl<_$UpdatedMemoEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdatedMemoEntityImplToJson(
      this,
    );
  }
}

abstract class _UpdatedMemoEntity implements UpdatedMemoEntity {
  const factory _UpdatedMemoEntity(
      {required final String name,
      required final MemoFields fields,
      required final String createTime,
      required final String updateTime}) = _$UpdatedMemoEntityImpl;

  factory _UpdatedMemoEntity.fromJson(Map<String, dynamic> json) =
      _$UpdatedMemoEntityImpl.fromJson;

  @override
  String get name;
  @override
  MemoFields get fields;
  @override
  String get createTime;
  @override
  String get updateTime;

  /// Create a copy of UpdatedMemoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedMemoEntityImplCopyWith<_$UpdatedMemoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
