import 'package:dio/dio.dart';
import 'package:fishingmemory/core/data/entity/memo/memo_storage_entity.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'storage_service.g.dart';

@RestApi(baseUrl: "")
abstract class StorageService {
  factory StorageService(Dio dio) = _StorageService;

  @MultiPart()
  @POST("o/memo_image%2F{imageName}")
  Future<MemoStorageEntity> postMemoImage(
    @Path("imageName") String memoImage,
    @Part() List<MultipartFile> image,
  );
}
