import 'package:fishingmemory/core/models/memo/memo_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_fields_request.freezed.dart';
part 'memo_fields_request.g.dart';

@freezed
class MemoFieldsRequest with _$MemoFieldsRequest {
  const factory MemoFieldsRequest({
    @Default(MemoFields.empty) MemoFields fields,
  }) = _MemoFieldsRequest;

  factory MemoFieldsRequest.fromJson(Map<String, dynamic> json) =>
      _$MemoFieldsRequestFromJson(json);

  static const empty = MemoFieldsRequest(fields: MemoFields.empty);
}
