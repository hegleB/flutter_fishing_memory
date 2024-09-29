import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_storage.freezed.dart';
part 'memo_storage.g.dart';

@freezed
class MemoStorage with _$MemoStorage {
  const factory MemoStorage({
    required String name,
    required String bucket,
    required String generation,
    required String metageneration,
    required String contentType,
    required String timeCreated,
    required String updated,
    required String storageClass,
    required String size,
    required String md5Hash,
    required String contentEncoding,
    required String contentDisposition,
    required String crc32c,
    required String etag,
    required String downloadTokens,
  }) = _MemoStorage;

  factory MemoStorage.fromJson(Map<String, dynamic> json) =>
      _$MemoStorageFromJson(json);
}
