part of 'location_setting_bloc.dart';

class LocationSettingState extends Equatable {
  final int currentPage;
  final Regions region;
  final List<String> selectedRegionName;
  final GeoCodingState geoCodingState;
  final ReverseGeoCodingState reverseGeoCodingState;
  final int doIndex;
  final int cityIndex;
  final int? selectedIndex;
  final double lat;
  final double lng;

  LocationSettingState({
    this.currentPage = 0,
    this.region = Regions.region,
    List<String>? selectedRegionName,
    GeoCodingState? geoCodingState,
    ReverseGeoCodingState? reverseGeoCodingState,
    this.doIndex = -1,
    this.cityIndex = -1,
    this.selectedIndex,
    this.lat = 0,
    this.lng = 0,
  })  : geoCodingState = geoCodingState ?? GeoCodingIdle(),
        reverseGeoCodingState = reverseGeoCodingState ?? ReverseGeoCodingIdle(),
        selectedRegionName = selectedRegionName ?? [];

  LocationSettingState copyWith({
    int? currentPage,
    Regions? region,
    List<String>? selectedRegionName,
    GeoCodingState? geoCodingState,
    ReverseGeoCodingState? reverseGeoCodingState,
    int? doIndex,
    int? cityIndex,
    int? selectedIndex,
    double? lat,
    double? lng,
  }) {
    return LocationSettingState(
      currentPage: currentPage ?? this.currentPage,
      region: region ?? this.region,
      selectedRegionName: selectedRegionName ?? this.selectedRegionName,
      geoCodingState: geoCodingState ?? this.geoCodingState,
      reverseGeoCodingState:
          reverseGeoCodingState ?? this.reverseGeoCodingState,
      doIndex: doIndex ?? this.doIndex,
      cityIndex: cityIndex ?? this.cityIndex,
      selectedIndex: selectedIndex ?? this.selectedIndex,
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  @override
  List<Object?> get props => [
        currentPage,
        region,
        selectedRegionName,
        geoCodingState,
        reverseGeoCodingState,
        doIndex,
        cityIndex,
        selectedIndex,
      ];
}
