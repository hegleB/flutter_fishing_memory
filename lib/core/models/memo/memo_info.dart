import 'package:fishingmemory/core/models/memo/memo_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_info.freezed.dart';
part 'memo_info.g.dart';

@freezed
class MemoInfo with _$MemoInfo {
  const factory MemoInfo({
    @Default('') String uuid,
    @Default('') String email,
    @Default('') String title,
    @Default('') String image,
    @Default('') String location,
    @Default('') String date,
    @Default('') String waterType,
    @Default('') String fishType,
    @Default('') String fishSize,
    @Default('') String content,
    @Default('') String createTime,
    @Default('') String coords,
  }) = _MemoInfo;

  factory MemoInfo.fromJson(Map<String, dynamic> json) =>
      _$MemoInfoFromJson(json);
}

extension MemoInfoX on MemoInfo {
  bool get isValidMemo {
    return title.isNotEmpty &&
        image.isNotEmpty &&
        waterType.isNotEmpty &&
        fishSize.isNotEmpty &&
        location.isNotEmpty &&
        date.isNotEmpty &&
        fishType.isNotEmpty &&
        content.isNotEmpty;
  }

  MemoFields toMemoFields(String email) {
    return MemoFields(
      uuid: FieldStringValue(stringValue: uuid),
      email: FieldStringValue(stringValue: email),
      title: FieldStringValue(stringValue: title),
      image: FieldStringValue(stringValue: image),
      waterType: FieldStringValue(stringValue: waterType),
      fishType: FieldStringValue(stringValue: fishType),
      location: FieldStringValue(stringValue: location),
      date: FieldStringValue(stringValue: date),
      fishSize: FieldStringValue(stringValue: fishSize),
      content: FieldStringValue(stringValue: content),
      coords: FieldStringValue(stringValue: coords),
      createTime: FieldStringValue(stringValue: createTime),
    );
  }
}
