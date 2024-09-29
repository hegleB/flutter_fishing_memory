import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_storage_entity.freezed.dart';
part 'memo_storage_entity.g.dart';

@freezed
class MemoStorageEntity with _$MemoStorageEntity {
  const factory MemoStorageEntity({
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
  }) = _MemoStorageEntity;

  factory MemoStorageEntity.fromJson(Map<String, dynamic> json) =>
      _$MemoStorageEntityFromJson(json);

  static const MemoStorageEntity empty = MemoStorageEntity(
    name: "",
    bucket: "",
    generation: "",
    metageneration: "",
    contentType: "",
    timeCreated: "",
    updated: "",
    storageClass: "",
    size: "",
    md5Hash: "",
    contentEncoding: "",
    contentDisposition: "",
    crc32c: "",
    etag: "",
    downloadTokens: "",
  );
}
