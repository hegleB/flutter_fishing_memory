import 'package:fishingmemory/core/models/memo/memo_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_entity.freezed.dart';
part 'memo_entity.g.dart';

@freezed
class MemoEntity with _$MemoEntity {
  const factory MemoEntity({
    required String name,
    required MemoFields fields,
    required String createTime,
    required String updateTime,
  }) = _MemoEntity;

  factory MemoEntity.fromJson(Map<String, dynamic> json) =>
      _$MemoEntityFromJson(json);
}
