import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fishingmemory/core/data/api/memo_service.dart';
import 'package:fishingmemory/core/data/api/storage_service.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_entity.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_fields_request.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_storage_entity.dart';
import 'package:fishingmemory/core/models/memo/memo.dart';
import 'package:fishingmemory/core/models/memo/memo_fields.dart';
import 'package:fishingmemory/core/models/memo/memo_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http_parser/http_parser.dart';

abstract class MemoRepository {
  Future<Memo> createMemo(MemoFields memoFields);
  Future<MemoStorage> uploadMemoImage(File image);
}

class MemoRepositoryImpl implements MemoRepository {
  final MemoService memoService;
  final StorageService storageService;

  MemoRepositoryImpl({
    required this.memoService,
    required this.storageService,
  });

  @override
  Future<Memo> createMemo(MemoFields memoFields) async {
    final projectId = dotenv.env['FIREBASE_DATABASE_PROJECT_ID'] ?? '';
    final memoEntity = await memoService.postMemo(
      projectId,
      memoFields.uuid.stringValue,
      MemoFieldsRequest(
        fields: memoFields,
      ),
    );
    return memoEntity.toMemo();
  }

  @override
  Future<MemoStorage> uploadMemoImage(File image) async {
    final String fileName =
        "${DateTime.now().microsecondsSinceEpoch.toString()}.png";
    var multipartFile = await MultipartFile.fromFile(
      image.path,
      filename: fileName,
      contentType: MediaType('image', 'png'),
    );

    final storageEntity =
        await storageService.postMemoImage(fileName, [multipartFile]);
    return storageEntity.toMemoStorage();
  }
}

extension MemoEntityToMemo on MemoEntity {
  Memo toMemo() {
    return Memo(
      fields: fields,
      createTime: createTime,
    );
  }
}

extension MemoStorageMapper on MemoStorageEntity {
  MemoStorage toMemoStorage() {
    return MemoStorage(
      name: name,
      bucket: bucket,
      generation: generation,
      metageneration: metageneration,
      contentType: contentType,
      timeCreated: timeCreated,
      updated: updated,
      storageClass: storageClass,
      size: size,
      md5Hash: md5Hash,
      contentEncoding: contentEncoding,
      contentDisposition: contentDisposition,
      crc32c: crc32c,
      etag: etag,
      downloadTokens: downloadTokens,
    );
  }
}
