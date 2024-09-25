import 'package:fishingmemory/core/data/entity/map/geocoding_entity.dart';
import 'package:fishingmemory/core/data/entity/map/reverse_geocoding_entity.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'map_service.g.dart';

@RestApi(baseUrl: "")
abstract class MapService {
  factory MapService(Dio dio) = _MapService;

  @GET("/map-geocode/v2/geocode")
  Future<GeocodingEntity> getGeocoding(
    @Query("query") String query,
  );

  @GET("/map-reversegeocode/v2/gc")
  Future<ReverseGeocodingEntity> getReverseGeocoding(
      @Query("coords") String coords,
      {@Query("orders") String orders = "addr",
      @Query("output") String output = "json"});
}
