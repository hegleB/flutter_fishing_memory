import 'package:fishingmemory/core/models/memo/memo_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'updated_memo_entity.freezed.dart';
part 'updated_memo_entity.g.dart';

@freezed
class UpdatedMemoEntity with _$UpdatedMemoEntity {
  const factory UpdatedMemoEntity({
    required String name,
    required MemoFields fields,
    required String createTime,
    required String updateTime,
  }) = _UpdatedMemoEntity;

  factory UpdatedMemoEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdatedMemoEntityFromJson(json);
}
