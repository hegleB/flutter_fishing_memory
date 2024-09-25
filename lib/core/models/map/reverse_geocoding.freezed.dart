// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reverse_geocoding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReverseGeocoding _$ReverseGeocodingFromJson(Map<String, dynamic> json) {
  return _ReverseGeocoding.fromJson(json);
}

/// @nodoc
mixin _$ReverseGeocoding {
  String get name => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get areaName => throw _privateConstructorUsedError;

  /// Serializes this ReverseGeocoding to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReverseGeocoding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReverseGeocodingCopyWith<ReverseGeocoding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReverseGeocodingCopyWith<$Res> {
  factory $ReverseGeocodingCopyWith(
          ReverseGeocoding value, $Res Function(ReverseGeocoding) then) =
      _$ReverseGeocodingCopyWithImpl<$Res, ReverseGeocoding>;
  @useResult
  $Res call({String name, int code, String areaName});
}

/// @nodoc
class _$ReverseGeocodingCopyWithImpl<$Res, $Val extends ReverseGeocoding>
    implements $ReverseGeocodingCopyWith<$Res> {
  _$ReverseGeocodingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReverseGeocoding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? areaName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      areaName: null == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReverseGeocodingImplCopyWith<$Res>
    implements $ReverseGeocodingCopyWith<$Res> {
  factory _$$ReverseGeocodingImplCopyWith(_$ReverseGeocodingImpl value,
          $Res Function(_$ReverseGeocodingImpl) then) =
      __$$ReverseGeocodingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int code, String areaName});
}

/// @nodoc
class __$$ReverseGeocodingImplCopyWithImpl<$Res>
    extends _$ReverseGeocodingCopyWithImpl<$Res, _$ReverseGeocodingImpl>
    implements _$$ReverseGeocodingImplCopyWith<$Res> {
  __$$ReverseGeocodingImplCopyWithImpl(_$ReverseGeocodingImpl _value,
      $Res Function(_$ReverseGeocodingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReverseGeocoding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? areaName = null,
  }) {
    return _then(_$ReverseGeocodingImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      areaName: null == areaName
          ? _value.areaName
          : areaName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReverseGeocodingImpl implements _ReverseGeocoding {
  const _$ReverseGeocodingImpl(
      {this.name = '', this.code = 0, this.areaName = ''});

  factory _$ReverseGeocodingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReverseGeocodingImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String areaName;

  @override
  String toString() {
    return 'ReverseGeocoding(name: $name, code: $code, areaName: $areaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReverseGeocodingImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.areaName, areaName) ||
                other.areaName == areaName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, areaName);

  /// Create a copy of ReverseGeocoding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReverseGeocodingImplCopyWith<_$ReverseGeocodingImpl> get copyWith =>
      __$$ReverseGeocodingImplCopyWithImpl<_$ReverseGeocodingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReverseGeocodingImplToJson(
      this,
    );
  }
}

abstract class _ReverseGeocoding implements ReverseGeocoding {
  const factory _ReverseGeocoding(
      {final String name,
      final int code,
      final String areaName}) = _$ReverseGeocodingImpl;

  factory _ReverseGeocoding.fromJson(Map<String, dynamic> json) =
      _$ReverseGeocodingImpl.fromJson;

  @override
  String get name;
  @override
  int get code;
  @override
  String get areaName;

  /// Create a copy of ReverseGeocoding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReverseGeocodingImplCopyWith<_$ReverseGeocodingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  int get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this Status to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({int code, String name, String message});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusImplCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$StatusImplCopyWith(
          _$StatusImpl value, $Res Function(_$StatusImpl) then) =
      __$$StatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String name, String message});
}

/// @nodoc
class __$$StatusImplCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$StatusImpl>
    implements _$$StatusImplCopyWith<$Res> {
  __$$StatusImplCopyWithImpl(
      _$StatusImpl _value, $Res Function(_$StatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? message = null,
  }) {
    return _then(_$StatusImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusImpl implements _Status {
  const _$StatusImpl({this.code = 0, this.name = '', this.message = ''});

  factory _$StatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Status(code: $code, name: $name, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, message);

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      __$$StatusImplCopyWithImpl<_$StatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusImplToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {final int code, final String name, final String message}) = _$StatusImpl;

  factory _Status.fromJson(Map<String, dynamic> json) = _$StatusImpl.fromJson;

  @override
  int get code;
  @override
  String get name;
  @override
  String get message;

  /// Create a copy of Status
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusImplCopyWith<_$StatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  String get name => throw _privateConstructorUsedError;
  Code get code => throw _privateConstructorUsedError;
  RegionEntity get region => throw _privateConstructorUsedError;
  Land get land => throw _privateConstructorUsedError;

  /// Serializes this Results to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call({String name, Code code, RegionEntity region, Land land});

  $CodeCopyWith<$Res> get code;
  $RegionEntityCopyWith<$Res> get region;
  $LandCopyWith<$Res> get land;
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? region = null,
    Object? land = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionEntity,
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
    ) as $Val);
  }

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeCopyWith<$Res> get code {
    return $CodeCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegionEntityCopyWith<$Res> get region {
    return $RegionEntityCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LandCopyWith<$Res> get land {
    return $LandCopyWith<$Res>(_value.land, (value) {
      return _then(_value.copyWith(land: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
          _$ResultsImpl value, $Res Function(_$ResultsImpl) then) =
      __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Code code, RegionEntity region, Land land});

  @override
  $CodeCopyWith<$Res> get code;
  @override
  $RegionEntityCopyWith<$Res> get region;
  @override
  $LandCopyWith<$Res> get land;
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
      _$ResultsImpl _value, $Res Function(_$ResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? region = null,
    Object? land = null,
  }) {
    return _then(_$ResultsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionEntity,
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl(
      {this.name = '',
      this.code = const Code(),
      this.region = const RegionEntity(),
      this.land = const Land()});

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final Code code;
  @override
  @JsonKey()
  final RegionEntity region;
  @override
  @JsonKey()
  final Land land;

  @override
  String toString() {
    return 'Results(name: $name, code: $code, region: $region, land: $land)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.land, land) || other.land == land));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, region, land);

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(
      this,
    );
  }
}

abstract class _Results implements Results {
  const factory _Results(
      {final String name,
      final Code code,
      final RegionEntity region,
      final Land land}) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  String get name;
  @override
  Code get code;
  @override
  RegionEntity get region;
  @override
  Land get land;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Code _$CodeFromJson(Map<String, dynamic> json) {
  return _Code.fromJson(json);
}

/// @nodoc
mixin _$Code {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get mappingId => throw _privateConstructorUsedError;

  /// Serializes this Code to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Code
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeCopyWith<Code> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeCopyWith<$Res> {
  factory $CodeCopyWith(Code value, $Res Function(Code) then) =
      _$CodeCopyWithImpl<$Res, Code>;
  @useResult
  $Res call({String id, String type, String mappingId});
}

/// @nodoc
class _$CodeCopyWithImpl<$Res, $Val extends Code>
    implements $CodeCopyWith<$Res> {
  _$CodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Code
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? mappingId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      mappingId: null == mappingId
          ? _value.mappingId
          : mappingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeImplCopyWith<$Res> implements $CodeCopyWith<$Res> {
  factory _$$CodeImplCopyWith(
          _$CodeImpl value, $Res Function(_$CodeImpl) then) =
      __$$CodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, String mappingId});
}

/// @nodoc
class __$$CodeImplCopyWithImpl<$Res>
    extends _$CodeCopyWithImpl<$Res, _$CodeImpl>
    implements _$$CodeImplCopyWith<$Res> {
  __$$CodeImplCopyWithImpl(_$CodeImpl _value, $Res Function(_$CodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Code
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? mappingId = null,
  }) {
    return _then(_$CodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      mappingId: null == mappingId
          ? _value.mappingId
          : mappingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeImpl implements _Code {
  const _$CodeImpl({this.id = '', this.type = '', this.mappingId = ''});

  factory _$CodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String mappingId;

  @override
  String toString() {
    return 'Code(id: $id, type: $type, mappingId: $mappingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.mappingId, mappingId) ||
                other.mappingId == mappingId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, mappingId);

  /// Create a copy of Code
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeImplCopyWith<_$CodeImpl> get copyWith =>
      __$$CodeImplCopyWithImpl<_$CodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeImplToJson(
      this,
    );
  }
}

abstract class _Code implements Code {
  const factory _Code(
      {final String id,
      final String type,
      final String mappingId}) = _$CodeImpl;

  factory _Code.fromJson(Map<String, dynamic> json) = _$CodeImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get mappingId;

  /// Create a copy of Code
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeImplCopyWith<_$CodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegionEntity _$RegionEntityFromJson(Map<String, dynamic> json) {
  return _RegionEntity.fromJson(json);
}

/// @nodoc
mixin _$RegionEntity {
  Area get area0 => throw _privateConstructorUsedError;
  Area get area1 => throw _privateConstructorUsedError;
  Area get area2 => throw _privateConstructorUsedError;
  Area get area3 => throw _privateConstructorUsedError;
  Area get area4 => throw _privateConstructorUsedError;

  /// Serializes this RegionEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionEntityCopyWith<RegionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionEntityCopyWith<$Res> {
  factory $RegionEntityCopyWith(
          RegionEntity value, $Res Function(RegionEntity) then) =
      _$RegionEntityCopyWithImpl<$Res, RegionEntity>;
  @useResult
  $Res call({Area area0, Area area1, Area area2, Area area3, Area area4});

  $AreaCopyWith<$Res> get area0;
  $AreaCopyWith<$Res> get area1;
  $AreaCopyWith<$Res> get area2;
  $AreaCopyWith<$Res> get area3;
  $AreaCopyWith<$Res> get area4;
}

/// @nodoc
class _$RegionEntityCopyWithImpl<$Res, $Val extends RegionEntity>
    implements $RegionEntityCopyWith<$Res> {
  _$RegionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area0 = null,
    Object? area1 = null,
    Object? area2 = null,
    Object? area3 = null,
    Object? area4 = null,
  }) {
    return _then(_value.copyWith(
      area0: null == area0
          ? _value.area0
          : area0 // ignore: cast_nullable_to_non_nullable
              as Area,
      area1: null == area1
          ? _value.area1
          : area1 // ignore: cast_nullable_to_non_nullable
              as Area,
      area2: null == area2
          ? _value.area2
          : area2 // ignore: cast_nullable_to_non_nullable
              as Area,
      area3: null == area3
          ? _value.area3
          : area3 // ignore: cast_nullable_to_non_nullable
              as Area,
      area4: null == area4
          ? _value.area4
          : area4 // ignore: cast_nullable_to_non_nullable
              as Area,
    ) as $Val);
  }

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area0 {
    return $AreaCopyWith<$Res>(_value.area0, (value) {
      return _then(_value.copyWith(area0: value) as $Val);
    });
  }

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area1 {
    return $AreaCopyWith<$Res>(_value.area1, (value) {
      return _then(_value.copyWith(area1: value) as $Val);
    });
  }

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area2 {
    return $AreaCopyWith<$Res>(_value.area2, (value) {
      return _then(_value.copyWith(area2: value) as $Val);
    });
  }

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area3 {
    return $AreaCopyWith<$Res>(_value.area3, (value) {
      return _then(_value.copyWith(area3: value) as $Val);
    });
  }

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AreaCopyWith<$Res> get area4 {
    return $AreaCopyWith<$Res>(_value.area4, (value) {
      return _then(_value.copyWith(area4: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegionEntityImplCopyWith<$Res>
    implements $RegionEntityCopyWith<$Res> {
  factory _$$RegionEntityImplCopyWith(
          _$RegionEntityImpl value, $Res Function(_$RegionEntityImpl) then) =
      __$$RegionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Area area0, Area area1, Area area2, Area area3, Area area4});

  @override
  $AreaCopyWith<$Res> get area0;
  @override
  $AreaCopyWith<$Res> get area1;
  @override
  $AreaCopyWith<$Res> get area2;
  @override
  $AreaCopyWith<$Res> get area3;
  @override
  $AreaCopyWith<$Res> get area4;
}

/// @nodoc
class __$$RegionEntityImplCopyWithImpl<$Res>
    extends _$RegionEntityCopyWithImpl<$Res, _$RegionEntityImpl>
    implements _$$RegionEntityImplCopyWith<$Res> {
  __$$RegionEntityImplCopyWithImpl(
      _$RegionEntityImpl _value, $Res Function(_$RegionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area0 = null,
    Object? area1 = null,
    Object? area2 = null,
    Object? area3 = null,
    Object? area4 = null,
  }) {
    return _then(_$RegionEntityImpl(
      area0: null == area0
          ? _value.area0
          : area0 // ignore: cast_nullable_to_non_nullable
              as Area,
      area1: null == area1
          ? _value.area1
          : area1 // ignore: cast_nullable_to_non_nullable
              as Area,
      area2: null == area2
          ? _value.area2
          : area2 // ignore: cast_nullable_to_non_nullable
              as Area,
      area3: null == area3
          ? _value.area3
          : area3 // ignore: cast_nullable_to_non_nullable
              as Area,
      area4: null == area4
          ? _value.area4
          : area4 // ignore: cast_nullable_to_non_nullable
              as Area,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionEntityImpl implements _RegionEntity {
  const _$RegionEntityImpl(
      {this.area0 = const Area(),
      this.area1 = const Area(),
      this.area2 = const Area(),
      this.area3 = const Area(),
      this.area4 = const Area()});

  factory _$RegionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionEntityImplFromJson(json);

  @override
  @JsonKey()
  final Area area0;
  @override
  @JsonKey()
  final Area area1;
  @override
  @JsonKey()
  final Area area2;
  @override
  @JsonKey()
  final Area area3;
  @override
  @JsonKey()
  final Area area4;

  @override
  String toString() {
    return 'RegionEntity(area0: $area0, area1: $area1, area2: $area2, area3: $area3, area4: $area4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionEntityImpl &&
            (identical(other.area0, area0) || other.area0 == area0) &&
            (identical(other.area1, area1) || other.area1 == area1) &&
            (identical(other.area2, area2) || other.area2 == area2) &&
            (identical(other.area3, area3) || other.area3 == area3) &&
            (identical(other.area4, area4) || other.area4 == area4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, area0, area1, area2, area3, area4);

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionEntityImplCopyWith<_$RegionEntityImpl> get copyWith =>
      __$$RegionEntityImplCopyWithImpl<_$RegionEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionEntityImplToJson(
      this,
    );
  }
}

abstract class _RegionEntity implements RegionEntity {
  const factory _RegionEntity(
      {final Area area0,
      final Area area1,
      final Area area2,
      final Area area3,
      final Area area4}) = _$RegionEntityImpl;

  factory _RegionEntity.fromJson(Map<String, dynamic> json) =
      _$RegionEntityImpl.fromJson;

  @override
  Area get area0;
  @override
  Area get area1;
  @override
  Area get area2;
  @override
  Area get area3;
  @override
  Area get area4;

  /// Create a copy of RegionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionEntityImplCopyWith<_$RegionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Land _$LandFromJson(Map<String, dynamic> json) {
  return _Land.fromJson(json);
}

/// @nodoc
mixin _$Land {
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number1 => throw _privateConstructorUsedError;
  String get number2 => throw _privateConstructorUsedError;
  Coords get coords => throw _privateConstructorUsedError;
  Addition get addition0 => throw _privateConstructorUsedError;
  Addition get addition1 => throw _privateConstructorUsedError;
  Addition get addition2 => throw _privateConstructorUsedError;
  Addition get addition3 => throw _privateConstructorUsedError;
  Addition get addition4 => throw _privateConstructorUsedError;

  /// Serializes this Land to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LandCopyWith<Land> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandCopyWith<$Res> {
  factory $LandCopyWith(Land value, $Res Function(Land) then) =
      _$LandCopyWithImpl<$Res, Land>;
  @useResult
  $Res call(
      {String type,
      String name,
      String number1,
      String number2,
      Coords coords,
      Addition addition0,
      Addition addition1,
      Addition addition2,
      Addition addition3,
      Addition addition4});

  $CoordsCopyWith<$Res> get coords;
  $AdditionCopyWith<$Res> get addition0;
  $AdditionCopyWith<$Res> get addition1;
  $AdditionCopyWith<$Res> get addition2;
  $AdditionCopyWith<$Res> get addition3;
  $AdditionCopyWith<$Res> get addition4;
}

/// @nodoc
class _$LandCopyWithImpl<$Res, $Val extends Land>
    implements $LandCopyWith<$Res> {
  _$LandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? number1 = null,
    Object? number2 = null,
    Object? coords = null,
    Object? addition0 = null,
    Object? addition1 = null,
    Object? addition2 = null,
    Object? addition3 = null,
    Object? addition4 = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number1: null == number1
          ? _value.number1
          : number1 // ignore: cast_nullable_to_non_nullable
              as String,
      number2: null == number2
          ? _value.number2
          : number2 // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      addition0: null == addition0
          ? _value.addition0
          : addition0 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition1: null == addition1
          ? _value.addition1
          : addition1 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition2: null == addition2
          ? _value.addition2
          : addition2 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition3: null == addition3
          ? _value.addition3
          : addition3 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition4: null == addition4
          ? _value.addition4
          : addition4 // ignore: cast_nullable_to_non_nullable
              as Addition,
    ) as $Val);
  }

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition0 {
    return $AdditionCopyWith<$Res>(_value.addition0, (value) {
      return _then(_value.copyWith(addition0: value) as $Val);
    });
  }

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition1 {
    return $AdditionCopyWith<$Res>(_value.addition1, (value) {
      return _then(_value.copyWith(addition1: value) as $Val);
    });
  }

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition2 {
    return $AdditionCopyWith<$Res>(_value.addition2, (value) {
      return _then(_value.copyWith(addition2: value) as $Val);
    });
  }

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition3 {
    return $AdditionCopyWith<$Res>(_value.addition3, (value) {
      return _then(_value.copyWith(addition3: value) as $Val);
    });
  }

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdditionCopyWith<$Res> get addition4 {
    return $AdditionCopyWith<$Res>(_value.addition4, (value) {
      return _then(_value.copyWith(addition4: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LandImplCopyWith<$Res> implements $LandCopyWith<$Res> {
  factory _$$LandImplCopyWith(
          _$LandImpl value, $Res Function(_$LandImpl) then) =
      __$$LandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String name,
      String number1,
      String number2,
      Coords coords,
      Addition addition0,
      Addition addition1,
      Addition addition2,
      Addition addition3,
      Addition addition4});

  @override
  $CoordsCopyWith<$Res> get coords;
  @override
  $AdditionCopyWith<$Res> get addition0;
  @override
  $AdditionCopyWith<$Res> get addition1;
  @override
  $AdditionCopyWith<$Res> get addition2;
  @override
  $AdditionCopyWith<$Res> get addition3;
  @override
  $AdditionCopyWith<$Res> get addition4;
}

/// @nodoc
class __$$LandImplCopyWithImpl<$Res>
    extends _$LandCopyWithImpl<$Res, _$LandImpl>
    implements _$$LandImplCopyWith<$Res> {
  __$$LandImplCopyWithImpl(_$LandImpl _value, $Res Function(_$LandImpl) _then)
      : super(_value, _then);

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? number1 = null,
    Object? number2 = null,
    Object? coords = null,
    Object? addition0 = null,
    Object? addition1 = null,
    Object? addition2 = null,
    Object? addition3 = null,
    Object? addition4 = null,
  }) {
    return _then(_$LandImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number1: null == number1
          ? _value.number1
          : number1 // ignore: cast_nullable_to_non_nullable
              as String,
      number2: null == number2
          ? _value.number2
          : number2 // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      addition0: null == addition0
          ? _value.addition0
          : addition0 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition1: null == addition1
          ? _value.addition1
          : addition1 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition2: null == addition2
          ? _value.addition2
          : addition2 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition3: null == addition3
          ? _value.addition3
          : addition3 // ignore: cast_nullable_to_non_nullable
              as Addition,
      addition4: null == addition4
          ? _value.addition4
          : addition4 // ignore: cast_nullable_to_non_nullable
              as Addition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LandImpl implements _Land {
  const _$LandImpl(
      {this.type = '',
      this.name = '',
      this.number1 = '',
      this.number2 = '',
      this.coords = const Coords(),
      this.addition0 = const Addition(),
      this.addition1 = const Addition(),
      this.addition2 = const Addition(),
      this.addition3 = const Addition(),
      this.addition4 = const Addition()});

  factory _$LandImpl.fromJson(Map<String, dynamic> json) =>
      _$$LandImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String number1;
  @override
  @JsonKey()
  final String number2;
  @override
  @JsonKey()
  final Coords coords;
  @override
  @JsonKey()
  final Addition addition0;
  @override
  @JsonKey()
  final Addition addition1;
  @override
  @JsonKey()
  final Addition addition2;
  @override
  @JsonKey()
  final Addition addition3;
  @override
  @JsonKey()
  final Addition addition4;

  @override
  String toString() {
    return 'Land(type: $type, name: $name, number1: $number1, number2: $number2, coords: $coords, addition0: $addition0, addition1: $addition1, addition2: $addition2, addition3: $addition3, addition4: $addition4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LandImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number1, number1) || other.number1 == number1) &&
            (identical(other.number2, number2) || other.number2 == number2) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            (identical(other.addition0, addition0) ||
                other.addition0 == addition0) &&
            (identical(other.addition1, addition1) ||
                other.addition1 == addition1) &&
            (identical(other.addition2, addition2) ||
                other.addition2 == addition2) &&
            (identical(other.addition3, addition3) ||
                other.addition3 == addition3) &&
            (identical(other.addition4, addition4) ||
                other.addition4 == addition4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, number1, number2,
      coords, addition0, addition1, addition2, addition3, addition4);

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LandImplCopyWith<_$LandImpl> get copyWith =>
      __$$LandImplCopyWithImpl<_$LandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LandImplToJson(
      this,
    );
  }
}

abstract class _Land implements Land {
  const factory _Land(
      {final String type,
      final String name,
      final String number1,
      final String number2,
      final Coords coords,
      final Addition addition0,
      final Addition addition1,
      final Addition addition2,
      final Addition addition3,
      final Addition addition4}) = _$LandImpl;

  factory _Land.fromJson(Map<String, dynamic> json) = _$LandImpl.fromJson;

  @override
  String get type;
  @override
  String get name;
  @override
  String get number1;
  @override
  String get number2;
  @override
  Coords get coords;
  @override
  Addition get addition0;
  @override
  Addition get addition1;
  @override
  Addition get addition2;
  @override
  Addition get addition3;
  @override
  Addition get addition4;

  /// Create a copy of Land
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LandImplCopyWith<_$LandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Addition _$AdditionFromJson(Map<String, dynamic> json) {
  return _Addition.fromJson(json);
}

/// @nodoc
mixin _$Addition {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this Addition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionCopyWith<Addition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionCopyWith<$Res> {
  factory $AdditionCopyWith(Addition value, $Res Function(Addition) then) =
      _$AdditionCopyWithImpl<$Res, Addition>;
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class _$AdditionCopyWithImpl<$Res, $Val extends Addition>
    implements $AdditionCopyWith<$Res> {
  _$AdditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionImplCopyWith<$Res>
    implements $AdditionCopyWith<$Res> {
  factory _$$AdditionImplCopyWith(
          _$AdditionImpl value, $Res Function(_$AdditionImpl) then) =
      __$$AdditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class __$$AdditionImplCopyWithImpl<$Res>
    extends _$AdditionCopyWithImpl<$Res, _$AdditionImpl>
    implements _$$AdditionImplCopyWith<$Res> {
  __$$AdditionImplCopyWithImpl(
      _$AdditionImpl _value, $Res Function(_$AdditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$AdditionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionImpl implements _Addition {
  const _$AdditionImpl({this.type = '', this.value = ''});

  factory _$AdditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'Addition(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionImplCopyWith<_$AdditionImpl> get copyWith =>
      __$$AdditionImplCopyWithImpl<_$AdditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionImplToJson(
      this,
    );
  }
}

abstract class _Addition implements Addition {
  const factory _Addition({final String type, final String value}) =
      _$AdditionImpl;

  factory _Addition.fromJson(Map<String, dynamic> json) =
      _$AdditionImpl.fromJson;

  @override
  String get type;
  @override
  String get value;

  /// Create a copy of Addition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionImplCopyWith<_$AdditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  String get name => throw _privateConstructorUsedError;
  Coords get coords => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;

  /// Serializes this Area to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call({String name, Coords coords, String alias});

  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? alias = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AreaImplCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$AreaImplCopyWith(
          _$AreaImpl value, $Res Function(_$AreaImpl) then) =
      __$$AreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Coords coords, String alias});

  @override
  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class __$$AreaImplCopyWithImpl<$Res>
    extends _$AreaCopyWithImpl<$Res, _$AreaImpl>
    implements _$$AreaImplCopyWith<$Res> {
  __$$AreaImplCopyWithImpl(_$AreaImpl _value, $Res Function(_$AreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? alias = null,
  }) {
    return _then(_$AreaImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaImpl implements _Area {
  const _$AreaImpl(
      {this.name = '', this.coords = const Coords(), this.alias = ''});

  factory _$AreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final Coords coords;
  @override
  @JsonKey()
  final String alias;

  @override
  String toString() {
    return 'Area(name: $name, coords: $coords, alias: $alias)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            (identical(other.alias, alias) || other.alias == alias));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, coords, alias);

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      __$$AreaImplCopyWithImpl<_$AreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaImplToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area(
      {final String name,
      final Coords coords,
      final String alias}) = _$AreaImpl;

  factory _Area.fromJson(Map<String, dynamic> json) = _$AreaImpl.fromJson;

  @override
  String get name;
  @override
  Coords get coords;
  @override
  String get alias;

  /// Create a copy of Area
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coords _$CoordsFromJson(Map<String, dynamic> json) {
  return _Coords.fromJson(json);
}

/// @nodoc
mixin _$Coords {
  Center get center => throw _privateConstructorUsedError;

  /// Serializes this Coords to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordsCopyWith<Coords> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordsCopyWith<$Res> {
  factory $CoordsCopyWith(Coords value, $Res Function(Coords) then) =
      _$CoordsCopyWithImpl<$Res, Coords>;
  @useResult
  $Res call({Center center});

  $CenterCopyWith<$Res> get center;
}

/// @nodoc
class _$CoordsCopyWithImpl<$Res, $Val extends Coords>
    implements $CoordsCopyWith<$Res> {
  _$CoordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
  }) {
    return _then(_value.copyWith(
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Center,
    ) as $Val);
  }

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CenterCopyWith<$Res> get center {
    return $CenterCopyWith<$Res>(_value.center, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoordsImplCopyWith<$Res> implements $CoordsCopyWith<$Res> {
  factory _$$CoordsImplCopyWith(
          _$CoordsImpl value, $Res Function(_$CoordsImpl) then) =
      __$$CoordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Center center});

  @override
  $CenterCopyWith<$Res> get center;
}

/// @nodoc
class __$$CoordsImplCopyWithImpl<$Res>
    extends _$CoordsCopyWithImpl<$Res, _$CoordsImpl>
    implements _$$CoordsImplCopyWith<$Res> {
  __$$CoordsImplCopyWithImpl(
      _$CoordsImpl _value, $Res Function(_$CoordsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
  }) {
    return _then(_$CoordsImpl(
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Center,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordsImpl implements _Coords {
  const _$CoordsImpl({this.center = const Center()});

  factory _$CoordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordsImplFromJson(json);

  @override
  @JsonKey()
  final Center center;

  @override
  String toString() {
    return 'Coords(center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordsImpl &&
            (identical(other.center, center) || other.center == center));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, center);

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordsImplCopyWith<_$CoordsImpl> get copyWith =>
      __$$CoordsImplCopyWithImpl<_$CoordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordsImplToJson(
      this,
    );
  }
}

abstract class _Coords implements Coords {
  const factory _Coords({final Center center}) = _$CoordsImpl;

  factory _Coords.fromJson(Map<String, dynamic> json) = _$CoordsImpl.fromJson;

  @override
  Center get center;

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordsImplCopyWith<_$CoordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Center _$CenterFromJson(Map<String, dynamic> json) {
  return _Center.fromJson(json);
}

/// @nodoc
mixin _$Center {
  String get crs => throw _privateConstructorUsedError;
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  /// Serializes this Center to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Center
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CenterCopyWith<Center> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CenterCopyWith<$Res> {
  factory $CenterCopyWith(Center value, $Res Function(Center) then) =
      _$CenterCopyWithImpl<$Res, Center>;
  @useResult
  $Res call({String crs, double x, double y});
}

/// @nodoc
class _$CenterCopyWithImpl<$Res, $Val extends Center>
    implements $CenterCopyWith<$Res> {
  _$CenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Center
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crs = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      crs: null == crs
          ? _value.crs
          : crs // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CenterImplCopyWith<$Res> implements $CenterCopyWith<$Res> {
  factory _$$CenterImplCopyWith(
          _$CenterImpl value, $Res Function(_$CenterImpl) then) =
      __$$CenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String crs, double x, double y});
}

/// @nodoc
class __$$CenterImplCopyWithImpl<$Res>
    extends _$CenterCopyWithImpl<$Res, _$CenterImpl>
    implements _$$CenterImplCopyWith<$Res> {
  __$$CenterImplCopyWithImpl(
      _$CenterImpl _value, $Res Function(_$CenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Center
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crs = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$CenterImpl(
      crs: null == crs
          ? _value.crs
          : crs // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CenterImpl implements _Center {
  const _$CenterImpl({this.crs = '', this.x = 0, this.y = 0});

  factory _$CenterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CenterImplFromJson(json);

  @override
  @JsonKey()
  final String crs;
  @override
  @JsonKey()
  final double x;
  @override
  @JsonKey()
  final double y;

  @override
  String toString() {
    return 'Center(crs: $crs, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CenterImpl &&
            (identical(other.crs, crs) || other.crs == crs) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, crs, x, y);

  /// Create a copy of Center
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CenterImplCopyWith<_$CenterImpl> get copyWith =>
      __$$CenterImplCopyWithImpl<_$CenterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CenterImplToJson(
      this,
    );
  }
}

abstract class _Center implements Center {
  const factory _Center({final String crs, final double x, final double y}) =
      _$CenterImpl;

  factory _Center.fromJson(Map<String, dynamic> json) = _$CenterImpl.fromJson;

  @override
  String get crs;
  @override
  double get x;
  @override
  double get y;

  /// Create a copy of Center
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CenterImplCopyWith<_$CenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
