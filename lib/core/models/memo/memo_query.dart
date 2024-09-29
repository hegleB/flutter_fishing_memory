import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_query.freezed.dart';
part 'memo_query.g.dart';

@freezed
class MemoQuery with _$MemoQuery {
  const factory MemoQuery({
    required StructuredQuery structuredQuery,
  }) = _MemoQuery;

  factory MemoQuery.fromJson(Map<String, dynamic> json) =>
      _$MemoQueryFromJson(json);
}

@freezed
class StructuredQuery with _$StructuredQuery {
  const factory StructuredQuery({
    required List<CollectionId> from,
    required List<OrderBy> orderBy,
    required Where where,
  }) = _StructuredQuery;

  factory StructuredQuery.fromJson(Map<String, dynamic> json) =>
      _$StructuredQueryFromJson(json);
}

@freezed
class CollectionId with _$CollectionId {
  const factory CollectionId({
    required String collectionId,
  }) = _CollectionId;

  factory CollectionId.fromJson(Map<String, dynamic> json) =>
      _$CollectionIdFromJson(json);
}

@freezed
class Where with _$Where {
  const factory Where({
    required CompositeFilter compositeFilter,
  }) = _Where;

  factory Where.fromJson(Map<String, dynamic> json) => _$WhereFromJson(json);
}

@freezed
class OrderBy with _$OrderBy {
  const factory OrderBy({
    required FieldPath field,
    required String direction,
  }) = _OrderBy;

  factory OrderBy.fromJson(Map<String, dynamic> json) =>
      _$OrderByFromJson(json);
}

@freezed
class CompositeFilter with _$CompositeFilter {
  const factory CompositeFilter({
    required String op,
    required List<Filter> filters,
  }) = _CompositeFilter;

  factory CompositeFilter.fromJson(Map<String, dynamic> json) =>
      _$CompositeFilterFromJson(json);
}

@freezed
class Filter with _$Filter {
  const factory Filter({
    required FieldFilter fieldFilter,
  }) = _Filter;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}

@freezed
class FieldFilter with _$FieldFilter {
  const factory FieldFilter({
    required FieldPath field,
    required String op,
    required Value value,
  }) = _FieldFilter;

  factory FieldFilter.fromJson(Map<String, dynamic> json) =>
      _$FieldFilterFromJson(json);
}

@freezed
class FieldPath with _$FieldPath {
  const factory FieldPath({
    required String fieldPath,
  }) = _FieldPath;

  factory FieldPath.fromJson(Map<String, dynamic> json) =>
      _$FieldPathFromJson(json);
}

@freezed
class Value with _$Value {
  const factory Value({
    required String stringValue,
  }) = _Value;

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}
