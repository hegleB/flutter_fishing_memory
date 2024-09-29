// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_query_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoQueryEntity _$MemoQueryEntityFromJson(Map<String, dynamic> json) {
  return _MemoQueryEntity.fromJson(json);
}

/// @nodoc
mixin _$MemoQueryEntity {
  Document get document => throw _privateConstructorUsedError;
  String get readTime => throw _privateConstructorUsedError;

  /// Serializes this MemoQueryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoQueryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoQueryEntityCopyWith<MemoQueryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoQueryEntityCopyWith<$Res> {
  factory $MemoQueryEntityCopyWith(
          MemoQueryEntity value, $Res Function(MemoQueryEntity) then) =
      _$MemoQueryEntityCopyWithImpl<$Res, MemoQueryEntity>;
  @useResult
  $Res call({Document document, String readTime});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$MemoQueryEntityCopyWithImpl<$Res, $Val extends MemoQueryEntity>
    implements $MemoQueryEntityCopyWith<$Res> {
  _$MemoQueryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoQueryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? readTime = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      readTime: null == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of MemoQueryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoQueryEntityImplCopyWith<$Res>
    implements $MemoQueryEntityCopyWith<$Res> {
  factory _$$MemoQueryEntityImplCopyWith(_$MemoQueryEntityImpl value,
          $Res Function(_$MemoQueryEntityImpl) then) =
      __$$MemoQueryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Document document, String readTime});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$MemoQueryEntityImplCopyWithImpl<$Res>
    extends _$MemoQueryEntityCopyWithImpl<$Res, _$MemoQueryEntityImpl>
    implements _$$MemoQueryEntityImplCopyWith<$Res> {
  __$$MemoQueryEntityImplCopyWithImpl(
      _$MemoQueryEntityImpl _value, $Res Function(_$MemoQueryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoQueryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
    Object? readTime = null,
  }) {
    return _then(_$MemoQueryEntityImpl(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
      readTime: null == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoQueryEntityImpl implements _MemoQueryEntity {
  const _$MemoQueryEntityImpl({required this.document, required this.readTime});

  factory _$MemoQueryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoQueryEntityImplFromJson(json);

  @override
  final Document document;
  @override
  final String readTime;

  @override
  String toString() {
    return 'MemoQueryEntity(document: $document, readTime: $readTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoQueryEntityImpl &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.readTime, readTime) ||
                other.readTime == readTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, document, readTime);

  /// Create a copy of MemoQueryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoQueryEntityImplCopyWith<_$MemoQueryEntityImpl> get copyWith =>
      __$$MemoQueryEntityImplCopyWithImpl<_$MemoQueryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoQueryEntityImplToJson(
      this,
    );
  }
}

abstract class _MemoQueryEntity implements MemoQueryEntity {
  const factory _MemoQueryEntity(
      {required final Document document,
      required final String readTime}) = _$MemoQueryEntityImpl;

  factory _MemoQueryEntity.fromJson(Map<String, dynamic> json) =
      _$MemoQueryEntityImpl.fromJson;

  @override
  Document get document;
  @override
  String get readTime;

  /// Create a copy of MemoQueryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoQueryEntityImplCopyWith<_$MemoQueryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
