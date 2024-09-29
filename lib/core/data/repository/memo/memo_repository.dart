import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fishingmemory/core/data/api/memo_service.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_entity.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_fields_request.dart';
import 'package:fishingmemory/core/models/memo/memo.dart';
import 'package:fishingmemory/core/models/memo/memo_fields.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class MemoRepository {
  Future<Memo> createMemo(MemoFields memoFields);
  Future<MemoStorage> uploadMemoImage(File image);
}

class MemoRepositoryImpl implements MemoRepository {
  final MemoService memoService;

  MemoRepositoryImpl({
    required this.memoService,
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
}

extension MemoEntityToMemo on MemoEntity {
  Memo toMemo() {
    return Memo(
      fields: fields,
      createTime: createTime,
    );
  }
}
