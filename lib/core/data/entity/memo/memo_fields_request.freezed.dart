// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_fields_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoFieldsRequest _$MemoFieldsRequestFromJson(Map<String, dynamic> json) {
  return _MemoFieldsRequest.fromJson(json);
}

/// @nodoc
mixin _$MemoFieldsRequest {
  MemoFields get fields => throw _privateConstructorUsedError;

  /// Serializes this MemoFieldsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoFieldsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoFieldsRequestCopyWith<MemoFieldsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoFieldsRequestCopyWith<$Res> {
  factory $MemoFieldsRequestCopyWith(
          MemoFieldsRequest value, $Res Function(MemoFieldsRequest) then) =
      _$MemoFieldsRequestCopyWithImpl<$Res, MemoFieldsRequest>;
  @useResult
  $Res call({MemoFields fields});

  $MemoFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class _$MemoFieldsRequestCopyWithImpl<$Res, $Val extends MemoFieldsRequest>
    implements $MemoFieldsRequestCopyWith<$Res> {
  _$MemoFieldsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoFieldsRequest
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
              as MemoFields,
    ) as $Val);
  }

  /// Create a copy of MemoFieldsRequest
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
abstract class _$$MemoFieldsRequestImplCopyWith<$Res>
    implements $MemoFieldsRequestCopyWith<$Res> {
  factory _$$MemoFieldsRequestImplCopyWith(_$MemoFieldsRequestImpl value,
          $Res Function(_$MemoFieldsRequestImpl) then) =
      __$$MemoFieldsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MemoFields fields});

  @override
  $MemoFieldsCopyWith<$Res> get fields;
}

/// @nodoc
class __$$MemoFieldsRequestImplCopyWithImpl<$Res>
    extends _$MemoFieldsRequestCopyWithImpl<$Res, _$MemoFieldsRequestImpl>
    implements _$$MemoFieldsRequestImplCopyWith<$Res> {
  __$$MemoFieldsRequestImplCopyWithImpl(_$MemoFieldsRequestImpl _value,
      $Res Function(_$MemoFieldsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoFieldsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = null,
  }) {
    return _then(_$MemoFieldsRequestImpl(
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as MemoFields,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoFieldsRequestImpl implements _MemoFieldsRequest {
  const _$MemoFieldsRequestImpl({this.fields = MemoFields.empty});

  factory _$MemoFieldsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoFieldsRequestImplFromJson(json);

  @override
  @JsonKey()
  final MemoFields fields;

  @override
  String toString() {
    return 'MemoFieldsRequest(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoFieldsRequestImpl &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fields);

  /// Create a copy of MemoFieldsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoFieldsRequestImplCopyWith<_$MemoFieldsRequestImpl> get copyWith =>
      __$$MemoFieldsRequestImplCopyWithImpl<_$MemoFieldsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoFieldsRequestImplToJson(
      this,
    );
  }
}

abstract class _MemoFieldsRequest implements MemoFieldsRequest {
  const factory _MemoFieldsRequest({final MemoFields fields}) =
      _$MemoFieldsRequestImpl;

  factory _MemoFieldsRequest.fromJson(Map<String, dynamic> json) =
      _$MemoFieldsRequestImpl.fromJson;

  @override
  MemoFields get fields;

  /// Create a copy of MemoFieldsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoFieldsRequestImplCopyWith<_$MemoFieldsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
