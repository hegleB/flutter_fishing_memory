// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_fields_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoFieldsEntity _$MemoFieldsEntityFromJson(Map<String, dynamic> json) {
  return _MemoFieldsEntity.fromJson(json);
}

/// @nodoc
mixin _$MemoFieldsEntity {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this MemoFieldsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoFieldsEntityCopyWith<MemoFieldsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoFieldsEntityCopyWith<$Res> {
  factory $MemoFieldsEntityCopyWith(
          MemoFieldsEntity value, $Res Function(MemoFieldsEntity) then) =
      _$MemoFieldsEntityCopyWithImpl<$Res, MemoFieldsEntity>;
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class _$MemoFieldsEntityCopyWithImpl<$Res, $Val extends MemoFieldsEntity>
    implements $MemoFieldsEntityCopyWith<$Res> {
  _$MemoFieldsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoFieldsEntityImplCopyWith<$Res>
    implements $MemoFieldsEntityCopyWith<$Res> {
  factory _$$MemoFieldsEntityImplCopyWith(_$MemoFieldsEntityImpl value,
          $Res Function(_$MemoFieldsEntityImpl) then) =
      __$$MemoFieldsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String content});
}

/// @nodoc
class __$$MemoFieldsEntityImplCopyWithImpl<$Res>
    extends _$MemoFieldsEntityCopyWithImpl<$Res, _$MemoFieldsEntityImpl>
    implements _$$MemoFieldsEntityImplCopyWith<$Res> {
  __$$MemoFieldsEntityImplCopyWithImpl(_$MemoFieldsEntityImpl _value,
      $Res Function(_$MemoFieldsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$MemoFieldsEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoFieldsEntityImpl implements _MemoFieldsEntity {
  const _$MemoFieldsEntityImpl({required this.title, required this.content});

  factory _$MemoFieldsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoFieldsEntityImplFromJson(json);

  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'MemoFieldsEntity(title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoFieldsEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content);

  /// Create a copy of MemoFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoFieldsEntityImplCopyWith<_$MemoFieldsEntityImpl> get copyWith =>
      __$$MemoFieldsEntityImplCopyWithImpl<_$MemoFieldsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoFieldsEntityImplToJson(
      this,
    );
  }
}

abstract class _MemoFieldsEntity implements MemoFieldsEntity {
  const factory _MemoFieldsEntity(
      {required final String title,
      required final String content}) = _$MemoFieldsEntityImpl;

  factory _MemoFieldsEntity.fromJson(Map<String, dynamic> json) =
      _$MemoFieldsEntityImpl.fromJson;

  @override
  String get title;
  @override
  String get content;

  /// Create a copy of MemoFieldsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoFieldsEntityImplCopyWith<_$MemoFieldsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
