import 'package:fishingmemory/core/data/entity/memo/memo_entity.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_fields_entity.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_fields_request.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_query_entity.dart';
import 'package:fishingmemory/core/data/entity/memo/updated_memo_entity.dart';
import 'package:fishingmemory/core/models/memo/memo_query.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'memo_service.g.dart';

@RestApi(baseUrl: "")
abstract class MemoService {
  factory MemoService(Dio dio) = _MemoService;

  @POST("/v1beta1/projects/{projectId}/databases/(default)/documents/memo")
  Future<MemoEntity> postMemo(
    @Path("projectId") String projectId,
    @Query("documentId") String documentId,
    @Body() MemoFieldsRequest fields,
  );

  @POST("/v1beta1/projects/{projectId}/databases/(default)/documents:runQuery")
  Future<List<MemoQueryEntity>> postMemoFiltering(
    @Path("projectId") String projectId,
    @Body() MemoQuery memoQuery,
  );

  @DELETE(
      "/v1beta1/projects/{projectId}/databases/(default)/documents/memo/{documentId}")
  Future<void> deleteMemo(
    @Path("projectId") String projectId,
    @Path("documentId") String documentId,
  );

  @PATCH(
      "/v1beta1/projects/{projectId}/databases/(default)/documents/memo/{documentId}")
  Future<UpdatedMemoEntity> updateMemo(
    @Path("projectId") String projectId,
    @Path("documentId") String documentId,
    @Body() MemoFieldsEntity fields,
  );
}
