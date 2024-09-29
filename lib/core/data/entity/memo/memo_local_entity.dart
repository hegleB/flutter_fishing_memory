import 'package:fishingmemory/core/data/entity/memo/memo_fields_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_local_entity.freezed.dart';
part 'memo_local_entity.g.dart';

@freezed
class MemoLocalEntity with _$MemoLocalEntity {
  const factory MemoLocalEntity({
    required String uuid,
    required MemoFieldsEntity fields,
    required String createTime,
  }) = _MemoLocalEntity;

  factory MemoLocalEntity.fromJson(Map<String, dynamic> json) =>
      _$MemoLocalEntityFromJson(json);
}
