// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reverse_geocoding_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReverseGeocodingEntity _$ReverseGeocodingEntityFromJson(
    Map<String, dynamic> json) {
  return _ReverseGeocodingEntity.fromJson(json);
}

/// @nodoc
mixin _$ReverseGeocodingEntity {
  Status get status => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  /// Serializes this ReverseGeocodingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReverseGeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReverseGeocodingEntityCopyWith<ReverseGeocodingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReverseGeocodingEntityCopyWith<$Res> {
  factory $ReverseGeocodingEntityCopyWith(ReverseGeocodingEntity value,
          $Res Function(ReverseGeocodingEntity) then) =
      _$ReverseGeocodingEntityCopyWithImpl<$Res, ReverseGeocodingEntity>;
  @useResult
  $Res call({Status status, List<Results> results});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ReverseGeocodingEntityCopyWithImpl<$Res,
        $Val extends ReverseGeocodingEntity>
    implements $ReverseGeocodingEntityCopyWith<$Res> {
  _$ReverseGeocodingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReverseGeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ) as $Val);
  }

  /// Create a copy of ReverseGeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReverseGeocodingEntityImplCopyWith<$Res>
    implements $ReverseGeocodingEntityCopyWith<$Res> {
  factory _$$ReverseGeocodingEntityImplCopyWith(
          _$ReverseGeocodingEntityImpl value,
          $Res Function(_$ReverseGeocodingEntityImpl) then) =
      __$$ReverseGeocodingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<Results> results});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ReverseGeocodingEntityImplCopyWithImpl<$Res>
    extends _$ReverseGeocodingEntityCopyWithImpl<$Res,
        _$ReverseGeocodingEntityImpl>
    implements _$$ReverseGeocodingEntityImplCopyWith<$Res> {
  __$$ReverseGeocodingEntityImplCopyWithImpl(
      _$ReverseGeocodingEntityImpl _value,
      $Res Function(_$ReverseGeocodingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReverseGeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
  }) {
    return _then(_$ReverseGeocodingEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReverseGeocodingEntityImpl implements _ReverseGeocodingEntity {
  const _$ReverseGeocodingEntityImpl(
      {required this.status, required final List<Results> results})
      : _results = results;

  factory _$ReverseGeocodingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReverseGeocodingEntityImplFromJson(json);

  @override
  final Status status;
  final List<Results> _results;
  @override
  List<Results> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ReverseGeocodingEntity(status: $status, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReverseGeocodingEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_results));

  /// Create a copy of ReverseGeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReverseGeocodingEntityImplCopyWith<_$ReverseGeocodingEntityImpl>
      get copyWith => __$$ReverseGeocodingEntityImplCopyWithImpl<
          _$ReverseGeocodingEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReverseGeocodingEntityImplToJson(
      this,
    );
  }
}

abstract class _ReverseGeocodingEntity implements ReverseGeocodingEntity {
  const factory _ReverseGeocodingEntity(
      {required final Status status,
      required final List<Results> results}) = _$ReverseGeocodingEntityImpl;

  factory _ReverseGeocodingEntity.fromJson(Map<String, dynamic> json) =
      _$ReverseGeocodingEntityImpl.fromJson;

  @override
  Status get status;
  @override
  List<Results> get results;

  /// Create a copy of ReverseGeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReverseGeocodingEntityImplCopyWith<_$ReverseGeocodingEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
