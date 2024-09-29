import 'package:fishingmemory/core/data/entity/memo/document.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_query_entity.freezed.dart';
part 'memo_query_entity.g.dart';

@freezed
class MemoQueryEntity with _$MemoQueryEntity {
  const factory MemoQueryEntity({
    required Document document,
    required String readTime,
  }) = _MemoQueryEntity;

  factory MemoQueryEntity.fromJson(Map<String, dynamic> json) =>
      _$MemoQueryEntityFromJson(json);

  static const MemoQueryEntity EMPTY = MemoQueryEntity(
    document: Document.EMPTY,
    readTime: "",
  );
}
