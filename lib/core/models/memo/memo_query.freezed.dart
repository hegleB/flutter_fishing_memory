// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemoQuery _$MemoQueryFromJson(Map<String, dynamic> json) {
  return _MemoQuery.fromJson(json);
}

/// @nodoc
mixin _$MemoQuery {
  StructuredQuery get structuredQuery => throw _privateConstructorUsedError;

  /// Serializes this MemoQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemoQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemoQueryCopyWith<MemoQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoQueryCopyWith<$Res> {
  factory $MemoQueryCopyWith(MemoQuery value, $Res Function(MemoQuery) then) =
      _$MemoQueryCopyWithImpl<$Res, MemoQuery>;
  @useResult
  $Res call({StructuredQuery structuredQuery});

  $StructuredQueryCopyWith<$Res> get structuredQuery;
}

/// @nodoc
class _$MemoQueryCopyWithImpl<$Res, $Val extends MemoQuery>
    implements $MemoQueryCopyWith<$Res> {
  _$MemoQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemoQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? structuredQuery = null,
  }) {
    return _then(_value.copyWith(
      structuredQuery: null == structuredQuery
          ? _value.structuredQuery
          : structuredQuery // ignore: cast_nullable_to_non_nullable
              as StructuredQuery,
    ) as $Val);
  }

  /// Create a copy of MemoQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StructuredQueryCopyWith<$Res> get structuredQuery {
    return $StructuredQueryCopyWith<$Res>(_value.structuredQuery, (value) {
      return _then(_value.copyWith(structuredQuery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemoQueryImplCopyWith<$Res>
    implements $MemoQueryCopyWith<$Res> {
  factory _$$MemoQueryImplCopyWith(
          _$MemoQueryImpl value, $Res Function(_$MemoQueryImpl) then) =
      __$$MemoQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StructuredQuery structuredQuery});

  @override
  $StructuredQueryCopyWith<$Res> get structuredQuery;
}

/// @nodoc
class __$$MemoQueryImplCopyWithImpl<$Res>
    extends _$MemoQueryCopyWithImpl<$Res, _$MemoQueryImpl>
    implements _$$MemoQueryImplCopyWith<$Res> {
  __$$MemoQueryImplCopyWithImpl(
      _$MemoQueryImpl _value, $Res Function(_$MemoQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MemoQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? structuredQuery = null,
  }) {
    return _then(_$MemoQueryImpl(
      structuredQuery: null == structuredQuery
          ? _value.structuredQuery
          : structuredQuery // ignore: cast_nullable_to_non_nullable
              as StructuredQuery,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoQueryImpl implements _MemoQuery {
  const _$MemoQueryImpl({required this.structuredQuery});

  factory _$MemoQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoQueryImplFromJson(json);

  @override
  final StructuredQuery structuredQuery;

  @override
  String toString() {
    return 'MemoQuery(structuredQuery: $structuredQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoQueryImpl &&
            (identical(other.structuredQuery, structuredQuery) ||
                other.structuredQuery == structuredQuery));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, structuredQuery);

  /// Create a copy of MemoQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoQueryImplCopyWith<_$MemoQueryImpl> get copyWith =>
      __$$MemoQueryImplCopyWithImpl<_$MemoQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoQueryImplToJson(
      this,
    );
  }
}

abstract class _MemoQuery implements MemoQuery {
  const factory _MemoQuery({required final StructuredQuery structuredQuery}) =
      _$MemoQueryImpl;

  factory _MemoQuery.fromJson(Map<String, dynamic> json) =
      _$MemoQueryImpl.fromJson;

  @override
  StructuredQuery get structuredQuery;

  /// Create a copy of MemoQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemoQueryImplCopyWith<_$MemoQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StructuredQuery _$StructuredQueryFromJson(Map<String, dynamic> json) {
  return _StructuredQuery.fromJson(json);
}

/// @nodoc
mixin _$StructuredQuery {
  List<CollectionId> get from => throw _privateConstructorUsedError;
  List<OrderBy> get orderBy => throw _privateConstructorUsedError;
  Where get where => throw _privateConstructorUsedError;

  /// Serializes this StructuredQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StructuredQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StructuredQueryCopyWith<StructuredQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructuredQueryCopyWith<$Res> {
  factory $StructuredQueryCopyWith(
          StructuredQuery value, $Res Function(StructuredQuery) then) =
      _$StructuredQueryCopyWithImpl<$Res, StructuredQuery>;
  @useResult
  $Res call({List<CollectionId> from, List<OrderBy> orderBy, Where where});

  $WhereCopyWith<$Res> get where;
}

/// @nodoc
class _$StructuredQueryCopyWithImpl<$Res, $Val extends StructuredQuery>
    implements $StructuredQueryCopyWith<$Res> {
  _$StructuredQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StructuredQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? orderBy = null,
    Object? where = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as List<CollectionId>,
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as List<OrderBy>,
      where: null == where
          ? _value.where
          : where // ignore: cast_nullable_to_non_nullable
              as Where,
    ) as $Val);
  }

  /// Create a copy of StructuredQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WhereCopyWith<$Res> get where {
    return $WhereCopyWith<$Res>(_value.where, (value) {
      return _then(_value.copyWith(where: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StructuredQueryImplCopyWith<$Res>
    implements $StructuredQueryCopyWith<$Res> {
  factory _$$StructuredQueryImplCopyWith(_$StructuredQueryImpl value,
          $Res Function(_$StructuredQueryImpl) then) =
      __$$StructuredQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CollectionId> from, List<OrderBy> orderBy, Where where});

  @override
  $WhereCopyWith<$Res> get where;
}

/// @nodoc
class __$$StructuredQueryImplCopyWithImpl<$Res>
    extends _$StructuredQueryCopyWithImpl<$Res, _$StructuredQueryImpl>
    implements _$$StructuredQueryImplCopyWith<$Res> {
  __$$StructuredQueryImplCopyWithImpl(
      _$StructuredQueryImpl _value, $Res Function(_$StructuredQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StructuredQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? orderBy = null,
    Object? where = null,
  }) {
    return _then(_$StructuredQueryImpl(
      from: null == from
          ? _value._from
          : from // ignore: cast_nullable_to_non_nullable
              as List<CollectionId>,
      orderBy: null == orderBy
          ? _value._orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as List<OrderBy>,
      where: null == where
          ? _value.where
          : where // ignore: cast_nullable_to_non_nullable
              as Where,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StructuredQueryImpl implements _StructuredQuery {
  const _$StructuredQueryImpl(
      {required final List<CollectionId> from,
      required final List<OrderBy> orderBy,
      required this.where})
      : _from = from,
        _orderBy = orderBy;

  factory _$StructuredQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructuredQueryImplFromJson(json);

  final List<CollectionId> _from;
  @override
  List<CollectionId> get from {
    if (_from is EqualUnmodifiableListView) return _from;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_from);
  }

  final List<OrderBy> _orderBy;
  @override
  List<OrderBy> get orderBy {
    if (_orderBy is EqualUnmodifiableListView) return _orderBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderBy);
  }

  @override
  final Where where;

  @override
  String toString() {
    return 'StructuredQuery(from: $from, orderBy: $orderBy, where: $where)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructuredQueryImpl &&
            const DeepCollectionEquality().equals(other._from, _from) &&
            const DeepCollectionEquality().equals(other._orderBy, _orderBy) &&
            (identical(other.where, where) || other.where == where));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_from),
      const DeepCollectionEquality().hash(_orderBy),
      where);

  /// Create a copy of StructuredQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StructuredQueryImplCopyWith<_$StructuredQueryImpl> get copyWith =>
      __$$StructuredQueryImplCopyWithImpl<_$StructuredQueryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructuredQueryImplToJson(
      this,
    );
  }
}

abstract class _StructuredQuery implements StructuredQuery {
  const factory _StructuredQuery(
      {required final List<CollectionId> from,
      required final List<OrderBy> orderBy,
      required final Where where}) = _$StructuredQueryImpl;

  factory _StructuredQuery.fromJson(Map<String, dynamic> json) =
      _$StructuredQueryImpl.fromJson;

  @override
  List<CollectionId> get from;
  @override
  List<OrderBy> get orderBy;
  @override
  Where get where;

  /// Create a copy of StructuredQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StructuredQueryImplCopyWith<_$StructuredQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectionId _$CollectionIdFromJson(Map<String, dynamic> json) {
  return _CollectionId.fromJson(json);
}

/// @nodoc
mixin _$CollectionId {
  String get collectionId => throw _privateConstructorUsedError;

  /// Serializes this CollectionId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionIdCopyWith<CollectionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionIdCopyWith<$Res> {
  factory $CollectionIdCopyWith(
          CollectionId value, $Res Function(CollectionId) then) =
      _$CollectionIdCopyWithImpl<$Res, CollectionId>;
  @useResult
  $Res call({String collectionId});
}

/// @nodoc
class _$CollectionIdCopyWithImpl<$Res, $Val extends CollectionId>
    implements $CollectionIdCopyWith<$Res> {
  _$CollectionIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
  }) {
    return _then(_value.copyWith(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionIdImplCopyWith<$Res>
    implements $CollectionIdCopyWith<$Res> {
  factory _$$CollectionIdImplCopyWith(
          _$CollectionIdImpl value, $Res Function(_$CollectionIdImpl) then) =
      __$$CollectionIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String collectionId});
}

/// @nodoc
class __$$CollectionIdImplCopyWithImpl<$Res>
    extends _$CollectionIdCopyWithImpl<$Res, _$CollectionIdImpl>
    implements _$$CollectionIdImplCopyWith<$Res> {
  __$$CollectionIdImplCopyWithImpl(
      _$CollectionIdImpl _value, $Res Function(_$CollectionIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = null,
  }) {
    return _then(_$CollectionIdImpl(
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionIdImpl implements _CollectionId {
  const _$CollectionIdImpl({required this.collectionId});

  factory _$CollectionIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionIdImplFromJson(json);

  @override
  final String collectionId;

  @override
  String toString() {
    return 'CollectionId(collectionId: $collectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionIdImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, collectionId);

  /// Create a copy of CollectionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionIdImplCopyWith<_$CollectionIdImpl> get copyWith =>
      __$$CollectionIdImplCopyWithImpl<_$CollectionIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionIdImplToJson(
      this,
    );
  }
}

abstract class _CollectionId implements CollectionId {
  const factory _CollectionId({required final String collectionId}) =
      _$CollectionIdImpl;

  factory _CollectionId.fromJson(Map<String, dynamic> json) =
      _$CollectionIdImpl.fromJson;

  @override
  String get collectionId;

  /// Create a copy of CollectionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionIdImplCopyWith<_$CollectionIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Where _$WhereFromJson(Map<String, dynamic> json) {
  return _Where.fromJson(json);
}

/// @nodoc
mixin _$Where {
  CompositeFilter get compositeFilter => throw _privateConstructorUsedError;

  /// Serializes this Where to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Where
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WhereCopyWith<Where> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhereCopyWith<$Res> {
  factory $WhereCopyWith(Where value, $Res Function(Where) then) =
      _$WhereCopyWithImpl<$Res, Where>;
  @useResult
  $Res call({CompositeFilter compositeFilter});

  $CompositeFilterCopyWith<$Res> get compositeFilter;
}

/// @nodoc
class _$WhereCopyWithImpl<$Res, $Val extends Where>
    implements $WhereCopyWith<$Res> {
  _$WhereCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Where
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compositeFilter = null,
  }) {
    return _then(_value.copyWith(
      compositeFilter: null == compositeFilter
          ? _value.compositeFilter
          : compositeFilter // ignore: cast_nullable_to_non_nullable
              as CompositeFilter,
    ) as $Val);
  }

  /// Create a copy of Where
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompositeFilterCopyWith<$Res> get compositeFilter {
    return $CompositeFilterCopyWith<$Res>(_value.compositeFilter, (value) {
      return _then(_value.copyWith(compositeFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WhereImplCopyWith<$Res> implements $WhereCopyWith<$Res> {
  factory _$$WhereImplCopyWith(
          _$WhereImpl value, $Res Function(_$WhereImpl) then) =
      __$$WhereImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CompositeFilter compositeFilter});

  @override
  $CompositeFilterCopyWith<$Res> get compositeFilter;
}

/// @nodoc
class __$$WhereImplCopyWithImpl<$Res>
    extends _$WhereCopyWithImpl<$Res, _$WhereImpl>
    implements _$$WhereImplCopyWith<$Res> {
  __$$WhereImplCopyWithImpl(
      _$WhereImpl _value, $Res Function(_$WhereImpl) _then)
      : super(_value, _then);

  /// Create a copy of Where
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? compositeFilter = null,
  }) {
    return _then(_$WhereImpl(
      compositeFilter: null == compositeFilter
          ? _value.compositeFilter
          : compositeFilter // ignore: cast_nullable_to_non_nullable
              as CompositeFilter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WhereImpl implements _Where {
  const _$WhereImpl({required this.compositeFilter});

  factory _$WhereImpl.fromJson(Map<String, dynamic> json) =>
      _$$WhereImplFromJson(json);

  @override
  final CompositeFilter compositeFilter;

  @override
  String toString() {
    return 'Where(compositeFilter: $compositeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhereImpl &&
            (identical(other.compositeFilter, compositeFilter) ||
                other.compositeFilter == compositeFilter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, compositeFilter);

  /// Create a copy of Where
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WhereImplCopyWith<_$WhereImpl> get copyWith =>
      __$$WhereImplCopyWithImpl<_$WhereImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WhereImplToJson(
      this,
    );
  }
}

abstract class _Where implements Where {
  const factory _Where({required final CompositeFilter compositeFilter}) =
      _$WhereImpl;

  factory _Where.fromJson(Map<String, dynamic> json) = _$WhereImpl.fromJson;

  @override
  CompositeFilter get compositeFilter;

  /// Create a copy of Where
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WhereImplCopyWith<_$WhereImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderBy _$OrderByFromJson(Map<String, dynamic> json) {
  return _OrderBy.fromJson(json);
}

/// @nodoc
mixin _$OrderBy {
  FieldPath get field => throw _privateConstructorUsedError;
  String get direction => throw _privateConstructorUsedError;

  /// Serializes this OrderBy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderByCopyWith<OrderBy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderByCopyWith<$Res> {
  factory $OrderByCopyWith(OrderBy value, $Res Function(OrderBy) then) =
      _$OrderByCopyWithImpl<$Res, OrderBy>;
  @useResult
  $Res call({FieldPath field, String direction});

  $FieldPathCopyWith<$Res> get field;
}

/// @nodoc
class _$OrderByCopyWithImpl<$Res, $Val extends OrderBy>
    implements $OrderByCopyWith<$Res> {
  _$OrderByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldPath,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldPathCopyWith<$Res> get field {
    return $FieldPathCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderByImplCopyWith<$Res> implements $OrderByCopyWith<$Res> {
  factory _$$OrderByImplCopyWith(
          _$OrderByImpl value, $Res Function(_$OrderByImpl) then) =
      __$$OrderByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FieldPath field, String direction});

  @override
  $FieldPathCopyWith<$Res> get field;
}

/// @nodoc
class __$$OrderByImplCopyWithImpl<$Res>
    extends _$OrderByCopyWithImpl<$Res, _$OrderByImpl>
    implements _$$OrderByImplCopyWith<$Res> {
  __$$OrderByImplCopyWithImpl(
      _$OrderByImpl _value, $Res Function(_$OrderByImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? direction = null,
  }) {
    return _then(_$OrderByImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldPath,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderByImpl implements _OrderBy {
  const _$OrderByImpl({required this.field, required this.direction});

  factory _$OrderByImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderByImplFromJson(json);

  @override
  final FieldPath field;
  @override
  final String direction;

  @override
  String toString() {
    return 'OrderBy(field: $field, direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderByImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field, direction);

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      __$$OrderByImplCopyWithImpl<_$OrderByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderByImplToJson(
      this,
    );
  }
}

abstract class _OrderBy implements OrderBy {
  const factory _OrderBy(
      {required final FieldPath field,
      required final String direction}) = _$OrderByImpl;

  factory _OrderBy.fromJson(Map<String, dynamic> json) = _$OrderByImpl.fromJson;

  @override
  FieldPath get field;
  @override
  String get direction;

  /// Create a copy of OrderBy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompositeFilter _$CompositeFilterFromJson(Map<String, dynamic> json) {
  return _CompositeFilter.fromJson(json);
}

/// @nodoc
mixin _$CompositeFilter {
  String get op => throw _privateConstructorUsedError;
  List<Filter> get filters => throw _privateConstructorUsedError;

  /// Serializes this CompositeFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompositeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompositeFilterCopyWith<CompositeFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompositeFilterCopyWith<$Res> {
  factory $CompositeFilterCopyWith(
          CompositeFilter value, $Res Function(CompositeFilter) then) =
      _$CompositeFilterCopyWithImpl<$Res, CompositeFilter>;
  @useResult
  $Res call({String op, List<Filter> filters});
}

/// @nodoc
class _$CompositeFilterCopyWithImpl<$Res, $Val extends CompositeFilter>
    implements $CompositeFilterCopyWith<$Res> {
  _$CompositeFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompositeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? op = null,
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompositeFilterImplCopyWith<$Res>
    implements $CompositeFilterCopyWith<$Res> {
  factory _$$CompositeFilterImplCopyWith(_$CompositeFilterImpl value,
          $Res Function(_$CompositeFilterImpl) then) =
      __$$CompositeFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String op, List<Filter> filters});
}

/// @nodoc
class __$$CompositeFilterImplCopyWithImpl<$Res>
    extends _$CompositeFilterCopyWithImpl<$Res, _$CompositeFilterImpl>
    implements _$$CompositeFilterImplCopyWith<$Res> {
  __$$CompositeFilterImplCopyWithImpl(
      _$CompositeFilterImpl _value, $Res Function(_$CompositeFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompositeFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? op = null,
    Object? filters = null,
  }) {
    return _then(_$CompositeFilterImpl(
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompositeFilterImpl implements _CompositeFilter {
  const _$CompositeFilterImpl(
      {required this.op, required final List<Filter> filters})
      : _filters = filters;

  factory _$CompositeFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompositeFilterImplFromJson(json);

  @override
  final String op;
  final List<Filter> _filters;
  @override
  List<Filter> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  String toString() {
    return 'CompositeFilter(op: $op, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompositeFilterImpl &&
            (identical(other.op, op) || other.op == op) &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, op, const DeepCollectionEquality().hash(_filters));

  /// Create a copy of CompositeFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompositeFilterImplCopyWith<_$CompositeFilterImpl> get copyWith =>
      __$$CompositeFilterImplCopyWithImpl<_$CompositeFilterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompositeFilterImplToJson(
      this,
    );
  }
}

abstract class _CompositeFilter implements CompositeFilter {
  const factory _CompositeFilter(
      {required final String op,
      required final List<Filter> filters}) = _$CompositeFilterImpl;

  factory _CompositeFilter.fromJson(Map<String, dynamic> json) =
      _$CompositeFilterImpl.fromJson;

  @override
  String get op;
  @override
  List<Filter> get filters;

  /// Create a copy of CompositeFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompositeFilterImplCopyWith<_$CompositeFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Filter _$FilterFromJson(Map<String, dynamic> json) {
  return _Filter.fromJson(json);
}

/// @nodoc
mixin _$Filter {
  FieldFilter get fieldFilter => throw _privateConstructorUsedError;

  /// Serializes this Filter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res, Filter>;
  @useResult
  $Res call({FieldFilter fieldFilter});

  $FieldFilterCopyWith<$Res> get fieldFilter;
}

/// @nodoc
class _$FilterCopyWithImpl<$Res, $Val extends Filter>
    implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldFilter = null,
  }) {
    return _then(_value.copyWith(
      fieldFilter: null == fieldFilter
          ? _value.fieldFilter
          : fieldFilter // ignore: cast_nullable_to_non_nullable
              as FieldFilter,
    ) as $Val);
  }

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldFilterCopyWith<$Res> get fieldFilter {
    return $FieldFilterCopyWith<$Res>(_value.fieldFilter, (value) {
      return _then(_value.copyWith(fieldFilter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterImplCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$$FilterImplCopyWith(
          _$FilterImpl value, $Res Function(_$FilterImpl) then) =
      __$$FilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FieldFilter fieldFilter});

  @override
  $FieldFilterCopyWith<$Res> get fieldFilter;
}

/// @nodoc
class __$$FilterImplCopyWithImpl<$Res>
    extends _$FilterCopyWithImpl<$Res, _$FilterImpl>
    implements _$$FilterImplCopyWith<$Res> {
  __$$FilterImplCopyWithImpl(
      _$FilterImpl _value, $Res Function(_$FilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldFilter = null,
  }) {
    return _then(_$FilterImpl(
      fieldFilter: null == fieldFilter
          ? _value.fieldFilter
          : fieldFilter // ignore: cast_nullable_to_non_nullable
              as FieldFilter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterImpl implements _Filter {
  const _$FilterImpl({required this.fieldFilter});

  factory _$FilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterImplFromJson(json);

  @override
  final FieldFilter fieldFilter;

  @override
  String toString() {
    return 'Filter(fieldFilter: $fieldFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            (identical(other.fieldFilter, fieldFilter) ||
                other.fieldFilter == fieldFilter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fieldFilter);

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterImplToJson(
      this,
    );
  }
}

abstract class _Filter implements Filter {
  const factory _Filter({required final FieldFilter fieldFilter}) =
      _$FilterImpl;

  factory _Filter.fromJson(Map<String, dynamic> json) = _$FilterImpl.fromJson;

  @override
  FieldFilter get fieldFilter;

  /// Create a copy of Filter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldFilter _$FieldFilterFromJson(Map<String, dynamic> json) {
  return _FieldFilter.fromJson(json);
}

/// @nodoc
mixin _$FieldFilter {
  FieldPath get field => throw _privateConstructorUsedError;
  String get op => throw _privateConstructorUsedError;
  Value get value => throw _privateConstructorUsedError;

  /// Serializes this FieldFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldFilterCopyWith<FieldFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldFilterCopyWith<$Res> {
  factory $FieldFilterCopyWith(
          FieldFilter value, $Res Function(FieldFilter) then) =
      _$FieldFilterCopyWithImpl<$Res, FieldFilter>;
  @useResult
  $Res call({FieldPath field, String op, Value value});

  $FieldPathCopyWith<$Res> get field;
  $ValueCopyWith<$Res> get value;
}

/// @nodoc
class _$FieldFilterCopyWithImpl<$Res, $Val extends FieldFilter>
    implements $FieldFilterCopyWith<$Res> {
  _$FieldFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? op = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldPath,
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value,
    ) as $Val);
  }

  /// Create a copy of FieldFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FieldPathCopyWith<$Res> get field {
    return $FieldPathCopyWith<$Res>(_value.field, (value) {
      return _then(_value.copyWith(field: value) as $Val);
    });
  }

  /// Create a copy of FieldFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueCopyWith<$Res> get value {
    return $ValueCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldFilterImplCopyWith<$Res>
    implements $FieldFilterCopyWith<$Res> {
  factory _$$FieldFilterImplCopyWith(
          _$FieldFilterImpl value, $Res Function(_$FieldFilterImpl) then) =
      __$$FieldFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FieldPath field, String op, Value value});

  @override
  $FieldPathCopyWith<$Res> get field;
  @override
  $ValueCopyWith<$Res> get value;
}

/// @nodoc
class __$$FieldFilterImplCopyWithImpl<$Res>
    extends _$FieldFilterCopyWithImpl<$Res, _$FieldFilterImpl>
    implements _$$FieldFilterImplCopyWith<$Res> {
  __$$FieldFilterImplCopyWithImpl(
      _$FieldFilterImpl _value, $Res Function(_$FieldFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? op = null,
    Object? value = null,
  }) {
    return _then(_$FieldFilterImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldPath,
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Value,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldFilterImpl implements _FieldFilter {
  const _$FieldFilterImpl(
      {required this.field, required this.op, required this.value});

  factory _$FieldFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldFilterImplFromJson(json);

  @override
  final FieldPath field;
  @override
  final String op;
  @override
  final Value value;

  @override
  String toString() {
    return 'FieldFilter(field: $field, op: $op, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldFilterImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.op, op) || other.op == op) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, field, op, value);

  /// Create a copy of FieldFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldFilterImplCopyWith<_$FieldFilterImpl> get copyWith =>
      __$$FieldFilterImplCopyWithImpl<_$FieldFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldFilterImplToJson(
      this,
    );
  }
}

abstract class _FieldFilter implements FieldFilter {
  const factory _FieldFilter(
      {required final FieldPath field,
      required final String op,
      required final Value value}) = _$FieldFilterImpl;

  factory _FieldFilter.fromJson(Map<String, dynamic> json) =
      _$FieldFilterImpl.fromJson;

  @override
  FieldPath get field;
  @override
  String get op;
  @override
  Value get value;

  /// Create a copy of FieldFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldFilterImplCopyWith<_$FieldFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldPath _$FieldPathFromJson(Map<String, dynamic> json) {
  return _FieldPath.fromJson(json);
}

/// @nodoc
mixin _$FieldPath {
  String get fieldPath => throw _privateConstructorUsedError;

  /// Serializes this FieldPath to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldPathCopyWith<FieldPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldPathCopyWith<$Res> {
  factory $FieldPathCopyWith(FieldPath value, $Res Function(FieldPath) then) =
      _$FieldPathCopyWithImpl<$Res, FieldPath>;
  @useResult
  $Res call({String fieldPath});
}

/// @nodoc
class _$FieldPathCopyWithImpl<$Res, $Val extends FieldPath>
    implements $FieldPathCopyWith<$Res> {
  _$FieldPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldPath = null,
  }) {
    return _then(_value.copyWith(
      fieldPath: null == fieldPath
          ? _value.fieldPath
          : fieldPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldPathImplCopyWith<$Res>
    implements $FieldPathCopyWith<$Res> {
  factory _$$FieldPathImplCopyWith(
          _$FieldPathImpl value, $Res Function(_$FieldPathImpl) then) =
      __$$FieldPathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fieldPath});
}

/// @nodoc
class __$$FieldPathImplCopyWithImpl<$Res>
    extends _$FieldPathCopyWithImpl<$Res, _$FieldPathImpl>
    implements _$$FieldPathImplCopyWith<$Res> {
  __$$FieldPathImplCopyWithImpl(
      _$FieldPathImpl _value, $Res Function(_$FieldPathImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldPath = null,
  }) {
    return _then(_$FieldPathImpl(
      fieldPath: null == fieldPath
          ? _value.fieldPath
          : fieldPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldPathImpl implements _FieldPath {
  const _$FieldPathImpl({required this.fieldPath});

  factory _$FieldPathImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldPathImplFromJson(json);

  @override
  final String fieldPath;

  @override
  String toString() {
    return 'FieldPath(fieldPath: $fieldPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldPathImpl &&
            (identical(other.fieldPath, fieldPath) ||
                other.fieldPath == fieldPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fieldPath);

  /// Create a copy of FieldPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldPathImplCopyWith<_$FieldPathImpl> get copyWith =>
      __$$FieldPathImplCopyWithImpl<_$FieldPathImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldPathImplToJson(
      this,
    );
  }
}

abstract class _FieldPath implements FieldPath {
  const factory _FieldPath({required final String fieldPath}) = _$FieldPathImpl;

  factory _FieldPath.fromJson(Map<String, dynamic> json) =
      _$FieldPathImpl.fromJson;

  @override
  String get fieldPath;

  /// Create a copy of FieldPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldPathImplCopyWith<_$FieldPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Value _$ValueFromJson(Map<String, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
mixin _$Value {
  String get stringValue => throw _privateConstructorUsedError;

  /// Serializes this Value to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueCopyWith<$Res> {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) =
      _$ValueCopyWithImpl<$Res, Value>;
  @useResult
  $Res call({String stringValue});
}

/// @nodoc
class _$ValueCopyWithImpl<$Res, $Val extends Value>
    implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringValue = null,
  }) {
    return _then(_value.copyWith(
      stringValue: null == stringValue
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
          _$ValueImpl value, $Res Function(_$ValueImpl) then) =
      __$$ValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String stringValue});
}

/// @nodoc
class __$$ValueImplCopyWithImpl<$Res>
    extends _$ValueCopyWithImpl<$Res, _$ValueImpl>
    implements _$$ValueImplCopyWith<$Res> {
  __$$ValueImplCopyWithImpl(
      _$ValueImpl _value, $Res Function(_$ValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringValue = null,
  }) {
    return _then(_$ValueImpl(
      stringValue: null == stringValue
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueImpl implements _Value {
  const _$ValueImpl({required this.stringValue});

  factory _$ValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueImplFromJson(json);

  @override
  final String stringValue;

  @override
  String toString() {
    return 'Value(stringValue: $stringValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl &&
            (identical(other.stringValue, stringValue) ||
                other.stringValue == stringValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, stringValue);

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      __$$ValueImplCopyWithImpl<_$ValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueImplToJson(
      this,
    );
  }
}

abstract class _Value implements Value {
  const factory _Value({required final String stringValue}) = _$ValueImpl;

  factory _Value.fromJson(Map<String, dynamic> json) = _$ValueImpl.fromJson;

  @override
  String get stringValue;

  /// Create a copy of Value
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
