// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeocodingEntity _$GeocodingEntityFromJson(Map<String, dynamic> json) {
  return _GeocodingEntity.fromJson(json);
}

/// @nodoc
mixin _$GeocodingEntity {
  String get status => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;
  List<Addresses> get addresses => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Serializes this GeocodingEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeocodingEntityCopyWith<GeocodingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodingEntityCopyWith<$Res> {
  factory $GeocodingEntityCopyWith(
          GeocodingEntity value, $Res Function(GeocodingEntity) then) =
      _$GeocodingEntityCopyWithImpl<$Res, GeocodingEntity>;
  @useResult
  $Res call(
      {String status,
      Meta meta,
      List<Addresses> addresses,
      String errorMessage});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$GeocodingEntityCopyWithImpl<$Res, $Val extends GeocodingEntity>
    implements $GeocodingEntityCopyWith<$Res> {
  _$GeocodingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? addresses = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Addresses>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of GeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeocodingEntityImplCopyWith<$Res>
    implements $GeocodingEntityCopyWith<$Res> {
  factory _$$GeocodingEntityImplCopyWith(_$GeocodingEntityImpl value,
          $Res Function(_$GeocodingEntityImpl) then) =
      __$$GeocodingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      Meta meta,
      List<Addresses> addresses,
      String errorMessage});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$GeocodingEntityImplCopyWithImpl<$Res>
    extends _$GeocodingEntityCopyWithImpl<$Res, _$GeocodingEntityImpl>
    implements _$$GeocodingEntityImplCopyWith<$Res> {
  __$$GeocodingEntityImplCopyWithImpl(
      _$GeocodingEntityImpl _value, $Res Function(_$GeocodingEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? meta = null,
    Object? addresses = null,
    Object? errorMessage = null,
  }) {
    return _then(_$GeocodingEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Addresses>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeocodingEntityImpl implements _GeocodingEntity {
  const _$GeocodingEntityImpl(
      {required this.status,
      required this.meta,
      required final List<Addresses> addresses,
      required this.errorMessage})
      : _addresses = addresses;

  factory _$GeocodingEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeocodingEntityImplFromJson(json);

  @override
  final String status;
  @override
  final Meta meta;
  final List<Addresses> _addresses;
  @override
  List<Addresses> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GeocodingEntity(status: $status, meta: $meta, addresses: $addresses, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeocodingEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, meta,
      const DeepCollectionEquality().hash(_addresses), errorMessage);

  /// Create a copy of GeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeocodingEntityImplCopyWith<_$GeocodingEntityImpl> get copyWith =>
      __$$GeocodingEntityImplCopyWithImpl<_$GeocodingEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeocodingEntityImplToJson(
      this,
    );
  }
}

abstract class _GeocodingEntity implements GeocodingEntity {
  const factory _GeocodingEntity(
      {required final String status,
      required final Meta meta,
      required final List<Addresses> addresses,
      required final String errorMessage}) = _$GeocodingEntityImpl;

  factory _GeocodingEntity.fromJson(Map<String, dynamic> json) =
      _$GeocodingEntityImpl.fromJson;

  @override
  String get status;
  @override
  Meta get meta;
  @override
  List<Addresses> get addresses;
  @override
  String get errorMessage;

  /// Create a copy of GeocodingEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeocodingEntityImplCopyWith<_$GeocodingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
