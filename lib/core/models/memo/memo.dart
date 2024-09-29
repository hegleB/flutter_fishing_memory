import 'package:fishingmemory/core/models/memo/memo_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo.freezed.dart';
part 'memo.g.dart';

@freezed
class Memo with _$Memo {
  const factory Memo({
    @Default(MemoFields.empty) MemoFields fields,
    required String createTime,
  }) = _Memo;

  factory Memo.fromJson(Map<String, dynamic> json) => _$MemoFromJson(json);
}
