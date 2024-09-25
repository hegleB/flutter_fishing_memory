import 'package:fishingmemory/core/data/api/map_service.dart';
import 'package:fishingmemory/core/data/entity/map/geocoding_entity.dart';
import 'package:fishingmemory/core/data/entity/map/reverse_geocoding_entity.dart';
import 'package:fishingmemory/core/models/map/geocoding.dart';
import 'package:fishingmemory/core/models/map/reverse_geocoding.dart';

abstract class MapRepository {
  Future<Geocoding> getGeocoding(String query);
  Future<ReverseGeocoding> getReverseGeocoding(String coords);
}

class MapRepositoryImpl implements MapRepository {
  final MapService mapService;

  MapRepositoryImpl({
    required this.mapService,
  });

  @override
  Future<Geocoding> getGeocoding(String query) async {
    try {
      GeocodingEntity geocodingEntity = await mapService.getGeocoding(query);
      return geocodingEntity.toGeocoding();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<ReverseGeocoding> getReverseGeocoding(String coords) async {
    try {
      ReverseGeocodingEntity reverseGeocodingEntity =
          await mapService.getReverseGeocoding(coords);
      return reverseGeocodingEntity.toReverseGeocoding();
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

extension ConvertGeocoding on GeocodingEntity {
  Geocoding toGeocoding() {
    List<Addresses> addresses = this.addresses;
    if (addresses.isEmpty) return const Geocoding();
    Addresses address = addresses[0];
    String coords = "${address.y} ${address.x}";
    return Geocoding(
      roadAddress: address.roadAddress,
      jibunAddress: address.jibunAddress,
      englishAddress: address.englishAddresst,
      addressElements: address.addressElements,
      x: address.x,
      y: address.y,
      coords: coords,
      distance: address.distance,
    );
  }
}

extension ConvertReverseGeocoding on ReverseGeocodingEntity {
  ReverseGeocoding toReverseGeocoding() {
    if (this.status.code != 0) {
      return ReverseGeocoding(code: this.status.code);
    }
    Results results = this.results[0];

    Status status = this.status;
    RegionEntity region = results.region;
    Land land = results.land;
    String areaName = [
      region.area1.name,
      region.area2.name,
      region.area3.name,
      region.area4.name,
      land.number1,
      land.number2,
    ].where((element) => element.isNotEmpty).join(' ');

    return ReverseGeocoding(
      name: results.name,
      code: status.code,
      areaName: areaName,
    );
  }
}
