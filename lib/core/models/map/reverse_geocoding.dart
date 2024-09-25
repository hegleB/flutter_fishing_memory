import 'package:freezed_annotation/freezed_annotation.dart';

part 'reverse_geocoding.freezed.dart';
part 'reverse_geocoding.g.dart';

@freezed
class ReverseGeocoding with _$ReverseGeocoding {
  const factory ReverseGeocoding({
    @Default('') String name,
    @Default(0) int code,
    @Default('') String areaName,
  }) = _ReverseGeocoding;

  factory ReverseGeocoding.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodingFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    @Default(0) int code,
    @Default('') String name,
    @Default('') String message,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    @Default('') String name,
    @Default(Code()) Code code,
    @Default(RegionEntity()) RegionEntity region,
    @Default(Land()) Land land,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class Code with _$Code {
  const factory Code({
    @Default('') String id,
    @Default('') String type,
    @Default('') String mappingId,
  }) = _Code;

  factory Code.fromJson(Map<String, dynamic> json) => _$CodeFromJson(json);
}

@freezed
class RegionEntity with _$RegionEntity {
  const factory RegionEntity({
    @Default(Area()) Area area0,
    @Default(Area()) Area area1,
    @Default(Area()) Area area2,
    @Default(Area()) Area area3,
    @Default(Area()) Area area4,
  }) = _RegionEntity;

  factory RegionEntity.fromJson(Map<String, dynamic> json) =>
      _$RegionEntityFromJson(json);
}

@freezed
class Land with _$Land {
  const factory Land({
    @Default('') String type,
    @Default('') String name,
    @Default('') String number1,
    @Default('') String number2,
    @Default(Coords()) Coords coords,
    @Default(Addition()) Addition addition0,
    @Default(Addition()) Addition addition1,
    @Default(Addition()) Addition addition2,
    @Default(Addition()) Addition addition3,
    @Default(Addition()) Addition addition4,
  }) = _Land;

  factory Land.fromJson(Map<String, dynamic> json) => _$LandFromJson(json);
}

@freezed
class Addition with _$Addition {
  const factory Addition({
    @Default('') String type,
    @Default('') String value,
  }) = _Addition;

  factory Addition.fromJson(Map<String, dynamic> json) =>
      _$AdditionFromJson(json);
}

@freezed
class Area with _$Area {
  const factory Area({
    @Default('') String name,
    @Default(Coords()) Coords coords,
    @Default('') String alias,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}

@freezed
class Coords with _$Coords {
  const factory Coords({
    @Default(Center()) Center center,
  }) = _Coords;

  factory Coords.fromJson(Map<String, dynamic> json) => _$CoordsFromJson(json);
}

@freezed
class Center with _$Center {
  const factory Center({
    @Default('') String crs,
    @Default(0) double x,
    @Default(0) double y,
  }) = _Center;

  factory Center.fromJson(Map<String, dynamic> json) => _$CenterFromJson(json);
}
