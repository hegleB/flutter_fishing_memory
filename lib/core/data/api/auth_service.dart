import 'package:fishingmemory/core/data/entity/sign_up_fields_entity.dart';
import 'package:fishingmemory/core/models/auth/sign_up_user.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: "")
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @GET("/v1beta1/projects/{projectId}/databases/(default)/documents/auth/{documentId}")
  Future<void> checkUserExistence(
    @Path("projectId") String projectId,
    @Path("documentId") String email,
  );

  @POST("/v1beta1/projects/{projectId}/databases/(default)/documents/auth")
  Future<SignUpFieldsEntity> postSignUp(
    @Path("projectId") String projectId,
    @Query("documentId") String email,
    @Body() SignUpFieldsEntity fields,
  );

  @GET("/v1beta1/projects/{projectId}/databases/(default)/documents/auth/{documentId}")
  Future<SignUpUser> getUserInfo(
    @Path("projectId") String projectId,
    @Path("documentId") String email,
  );

  @DELETE("/v1beta1/projects/{projectId}/databases/(default)/documents/auth/{documentId}")
  Future<void> deleteUserEmail(
    @Path("projectId") String projectId,
    @Path("documentId") String documentId,
  );
}
