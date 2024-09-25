// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Geocoding _$GeocodingFromJson(Map<String, dynamic> json) {
  return _Geocoding.fromJson(json);
}

/// @nodoc
mixin _$Geocoding {
  String get roadAddress => throw _privateConstructorUsedError;
  String get jibunAddress => throw _privateConstructorUsedError;
  String get englishAddress => throw _privateConstructorUsedError;
  List<Region> get addressElements => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  String get coords => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

  /// Serializes this Geocoding to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Geocoding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeocodingCopyWith<Geocoding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodingCopyWith<$Res> {
  factory $GeocodingCopyWith(Geocoding value, $Res Function(Geocoding) then) =
      _$GeocodingCopyWithImpl<$Res, Geocoding>;
  @useResult
  $Res call(
      {String roadAddress,
      String jibunAddress,
      String englishAddress,
      List<Region> addressElements,
      String x,
      String y,
      String coords,
      double distance});
}

/// @nodoc
class _$GeocodingCopyWithImpl<$Res, $Val extends Geocoding>
    implements $GeocodingCopyWith<$Res> {
  _$GeocodingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Geocoding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddress = null,
    Object? addressElements = null,
    Object? x = null,
    Object? y = null,
    Object? coords = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jibunAddress: null == jibunAddress
          ? _value.jibunAddress
          : jibunAddress // ignore: cast_nullable_to_non_nullable
              as String,
      englishAddress: null == englishAddress
          ? _value.englishAddress
          : englishAddress // ignore: cast_nullable_to_non_nullable
              as String,
      addressElements: null == addressElements
          ? _value.addressElements
          : addressElements // ignore: cast_nullable_to_non_nullable
              as List<Region>,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeocodingImplCopyWith<$Res>
    implements $GeocodingCopyWith<$Res> {
  factory _$$GeocodingImplCopyWith(
          _$GeocodingImpl value, $Res Function(_$GeocodingImpl) then) =
      __$$GeocodingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roadAddress,
      String jibunAddress,
      String englishAddress,
      List<Region> addressElements,
      String x,
      String y,
      String coords,
      double distance});
}

/// @nodoc
class __$$GeocodingImplCopyWithImpl<$Res>
    extends _$GeocodingCopyWithImpl<$Res, _$GeocodingImpl>
    implements _$$GeocodingImplCopyWith<$Res> {
  __$$GeocodingImplCopyWithImpl(
      _$GeocodingImpl _value, $Res Function(_$GeocodingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Geocoding
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddress = null,
    Object? addressElements = null,
    Object? x = null,
    Object? y = null,
    Object? coords = null,
    Object? distance = null,
  }) {
    return _then(_$GeocodingImpl(
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jibunAddress: null == jibunAddress
          ? _value.jibunAddress
          : jibunAddress // ignore: cast_nullable_to_non_nullable
              as String,
      englishAddress: null == englishAddress
          ? _value.englishAddress
          : englishAddress // ignore: cast_nullable_to_non_nullable
              as String,
      addressElements: null == addressElements
          ? _value._addressElements
          : addressElements // ignore: cast_nullable_to_non_nullable
              as List<Region>,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeocodingImpl implements _Geocoding {
  const _$GeocodingImpl(
      {this.roadAddress = '',
      this.jibunAddress = '',
      this.englishAddress = '',
      final List<Region> addressElements = const <Region>[],
      this.x = '',
      this.y = '',
      this.coords = '',
      this.distance = 0.0})
      : _addressElements = addressElements;

  factory _$GeocodingImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeocodingImplFromJson(json);

  @override
  @JsonKey()
  final String roadAddress;
  @override
  @JsonKey()
  final String jibunAddress;
  @override
  @JsonKey()
  final String englishAddress;
  final List<Region> _addressElements;
  @override
  @JsonKey()
  List<Region> get addressElements {
    if (_addressElements is EqualUnmodifiableListView) return _addressElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressElements);
  }

  @override
  @JsonKey()
  final String x;
  @override
  @JsonKey()
  final String y;
  @override
  @JsonKey()
  final String coords;
  @override
  @JsonKey()
  final double distance;

  @override
  String toString() {
    return 'Geocoding(roadAddress: $roadAddress, jibunAddress: $jibunAddress, englishAddress: $englishAddress, addressElements: $addressElements, x: $x, y: $y, coords: $coords, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeocodingImpl &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.jibunAddress, jibunAddress) ||
                other.jibunAddress == jibunAddress) &&
            (identical(other.englishAddress, englishAddress) ||
                other.englishAddress == englishAddress) &&
            const DeepCollectionEquality()
                .equals(other._addressElements, _addressElements) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roadAddress,
      jibunAddress,
      englishAddress,
      const DeepCollectionEquality().hash(_addressElements),
      x,
      y,
      coords,
      distance);

  /// Create a copy of Geocoding
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeocodingImplCopyWith<_$GeocodingImpl> get copyWith =>
      __$$GeocodingImplCopyWithImpl<_$GeocodingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeocodingImplToJson(
      this,
    );
  }
}

abstract class _Geocoding implements Geocoding {
  const factory _Geocoding(
      {final String roadAddress,
      final String jibunAddress,
      final String englishAddress,
      final List<Region> addressElements,
      final String x,
      final String y,
      final String coords,
      final double distance}) = _$GeocodingImpl;

  factory _Geocoding.fromJson(Map<String, dynamic> json) =
      _$GeocodingImpl.fromJson;

  @override
  String get roadAddress;
  @override
  String get jibunAddress;
  @override
  String get englishAddress;
  @override
  List<Region> get addressElements;
  @override
  String get x;
  @override
  String get y;
  @override
  String get coords;
  @override
  double get distance;

  /// Create a copy of Geocoding
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeocodingImplCopyWith<_$GeocodingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Region to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RegionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl({this.name = ''});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Region(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region({final String name}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  @override
  String get name;

  /// Create a copy of Region
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  String get totlaCount => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({String totlaCount, int page, int count});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totlaCount = null,
    Object? page = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      totlaCount: null == totlaCount
          ? _value.totlaCount
          : totlaCount // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String totlaCount, int page, int count});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totlaCount = null,
    Object? page = null,
    Object? count = null,
  }) {
    return _then(_$MetaImpl(
      totlaCount: null == totlaCount
          ? _value.totlaCount
          : totlaCount // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl({this.totlaCount = '', this.page = 0, this.count = 0});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  @JsonKey()
  final String totlaCount;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'Meta(totlaCount: $totlaCount, page: $page, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.totlaCount, totlaCount) ||
                other.totlaCount == totlaCount) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totlaCount, page, count);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {final String totlaCount, final int page, final int count}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  String get totlaCount;
  @override
  int get page;
  @override
  int get count;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Addresses _$AddressesFromJson(Map<String, dynamic> json) {
  return _Addresses.fromJson(json);
}

/// @nodoc
mixin _$Addresses {
  String get roadAddress => throw _privateConstructorUsedError;
  String get jibunAddress => throw _privateConstructorUsedError;
  String get englishAddresst => throw _privateConstructorUsedError;
  List<Region> get addressElements => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

  /// Serializes this Addresses to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Addresses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressesCopyWith<Addresses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressesCopyWith<$Res> {
  factory $AddressesCopyWith(Addresses value, $Res Function(Addresses) then) =
      _$AddressesCopyWithImpl<$Res, Addresses>;
  @useResult
  $Res call(
      {String roadAddress,
      String jibunAddress,
      String englishAddresst,
      List<Region> addressElements,
      String x,
      String y,
      double distance});
}

/// @nodoc
class _$AddressesCopyWithImpl<$Res, $Val extends Addresses>
    implements $AddressesCopyWith<$Res> {
  _$AddressesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Addresses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddresst = null,
    Object? addressElements = null,
    Object? x = null,
    Object? y = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jibunAddress: null == jibunAddress
          ? _value.jibunAddress
          : jibunAddress // ignore: cast_nullable_to_non_nullable
              as String,
      englishAddresst: null == englishAddresst
          ? _value.englishAddresst
          : englishAddresst // ignore: cast_nullable_to_non_nullable
              as String,
      addressElements: null == addressElements
          ? _value.addressElements
          : addressElements // ignore: cast_nullable_to_non_nullable
              as List<Region>,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressesImplCopyWith<$Res>
    implements $AddressesCopyWith<$Res> {
  factory _$$AddressesImplCopyWith(
          _$AddressesImpl value, $Res Function(_$AddressesImpl) then) =
      __$$AddressesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roadAddress,
      String jibunAddress,
      String englishAddresst,
      List<Region> addressElements,
      String x,
      String y,
      double distance});
}

/// @nodoc
class __$$AddressesImplCopyWithImpl<$Res>
    extends _$AddressesCopyWithImpl<$Res, _$AddressesImpl>
    implements _$$AddressesImplCopyWith<$Res> {
  __$$AddressesImplCopyWithImpl(
      _$AddressesImpl _value, $Res Function(_$AddressesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Addresses
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roadAddress = null,
    Object? jibunAddress = null,
    Object? englishAddresst = null,
    Object? addressElements = null,
    Object? x = null,
    Object? y = null,
    Object? distance = null,
  }) {
    return _then(_$AddressesImpl(
      roadAddress: null == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String,
      jibunAddress: null == jibunAddress
          ? _value.jibunAddress
          : jibunAddress // ignore: cast_nullable_to_non_nullable
              as String,
      englishAddresst: null == englishAddresst
          ? _value.englishAddresst
          : englishAddresst // ignore: cast_nullable_to_non_nullable
              as String,
      addressElements: null == addressElements
          ? _value._addressElements
          : addressElements // ignore: cast_nullable_to_non_nullable
              as List<Region>,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressesImpl implements _Addresses {
  const _$AddressesImpl(
      {this.roadAddress = '',
      this.jibunAddress = '',
      this.englishAddresst = '',
      final List<Region> addressElements = const [],
      this.x = '',
      this.y = '',
      this.distance = 0.0})
      : _addressElements = addressElements;

  factory _$AddressesImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressesImplFromJson(json);

  @override
  @JsonKey()
  final String roadAddress;
  @override
  @JsonKey()
  final String jibunAddress;
  @override
  @JsonKey()
  final String englishAddresst;
  final List<Region> _addressElements;
  @override
  @JsonKey()
  List<Region> get addressElements {
    if (_addressElements is EqualUnmodifiableListView) return _addressElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressElements);
  }

  @override
  @JsonKey()
  final String x;
  @override
  @JsonKey()
  final String y;
  @override
  @JsonKey()
  final double distance;

  @override
  String toString() {
    return 'Addresses(roadAddress: $roadAddress, jibunAddress: $jibunAddress, englishAddresst: $englishAddresst, addressElements: $addressElements, x: $x, y: $y, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressesImpl &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.jibunAddress, jibunAddress) ||
                other.jibunAddress == jibunAddress) &&
            (identical(other.englishAddresst, englishAddresst) ||
                other.englishAddresst == englishAddresst) &&
            const DeepCollectionEquality()
                .equals(other._addressElements, _addressElements) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roadAddress,
      jibunAddress,
      englishAddresst,
      const DeepCollectionEquality().hash(_addressElements),
      x,
      y,
      distance);

  /// Create a copy of Addresses
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressesImplCopyWith<_$AddressesImpl> get copyWith =>
      __$$AddressesImplCopyWithImpl<_$AddressesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressesImplToJson(
      this,
    );
  }
}

abstract class _Addresses implements Addresses {
  const factory _Addresses(
      {final String roadAddress,
      final String jibunAddress,
      final String englishAddresst,
      final List<Region> addressElements,
      final String x,
      final String y,
      final double distance}) = _$AddressesImpl;

  factory _Addresses.fromJson(Map<String, dynamic> json) =
      _$AddressesImpl.fromJson;

  @override
  String get roadAddress;
  @override
  String get jibunAddress;
  @override
  String get englishAddresst;
  @override
  List<Region> get addressElements;
  @override
  String get x;
  @override
  String get y;
  @override
  double get distance;

  /// Create a copy of Addresses
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressesImplCopyWith<_$AddressesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
