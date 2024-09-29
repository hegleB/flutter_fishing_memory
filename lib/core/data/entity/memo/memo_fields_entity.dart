import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_fields_entity.freezed.dart';
part 'memo_fields_entity.g.dart';

@freezed
class MemoFieldsEntity with _$MemoFieldsEntity {
  const factory MemoFieldsEntity({
    required String title,
    required String content,
  }) = _MemoFieldsEntity;

  factory MemoFieldsEntity.fromJson(Map<String, dynamic> json) =>
      _$MemoFieldsEntityFromJson(json);

  static const empty = MemoFieldsEntity(title: "", content: "");
}
