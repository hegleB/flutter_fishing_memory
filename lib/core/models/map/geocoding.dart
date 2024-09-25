import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoding.freezed.dart';
part 'geocoding.g.dart';

@freezed
class Geocoding with _$Geocoding {
  const factory Geocoding({
    @Default('') String roadAddress,
    @Default('') String jibunAddress,
    @Default('') String englishAddress,
    @Default(<Region>[]) List<Region> addressElements,
    @Default('') String x,
    @Default('') String y,
    @Default('') String coords,
    @Default(0.0) double distance,
  }) = _Geocoding;

  factory Geocoding.fromJson(Map<String, dynamic> json) =>
      _$GeocodingFromJson(json);
}

@freezed
class Region with _$Region {
  const factory Region({
    @Default('') String name,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @Default('') String totlaCount,
    @Default(0) int page,
    @Default(0) int count,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Addresses with _$Addresses {
  const factory Addresses({
    @Default('') String roadAddress,
    @Default('') String jibunAddress,
    @Default('') String englishAddresst,
    @Default([]) List<Region> addressElements,
    @Default('') String x,
    @Default('') String y,
    @Default(0.0) double distance,
  }) = _Addresses;

  factory Addresses.fromJson(Map<String, dynamic> json) =>
      _$AddressesFromJson(json);
}
