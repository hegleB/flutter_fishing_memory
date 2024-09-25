part of 'location_setting_bloc.dart';

abstract class LocationSettingEvent extends Equatable {
  const LocationSettingEvent();

  @override
  List<Object?> get props => [];
}

class ClickedNextPage extends LocationSettingEvent {}

class ClickedPreviousPage extends LocationSettingEvent {}

class SetDoIndex extends LocationSettingEvent {
  final int doIndex;

  const SetDoIndex(this.doIndex);

  @override
  List<Object> get props => [doIndex];
}

class SetCityIndex extends LocationSettingEvent {
  final int cityIndex;

  const SetCityIndex(this.cityIndex);

  @override
  List<Object> get props => [cityIndex];
}

class SetSelectedIndex extends LocationSettingEvent {
  final int? index;

  const SetSelectedIndex(this.index);

  @override
  List<Object?> get props => [index];
}

class SetSelectedRegionName extends LocationSettingEvent {
  final String regionName;

  const SetSelectedRegionName(this.regionName);

  @override
  List<Object> get props => [regionName];
}

class SetGeocoding extends LocationSettingEvent {
  final String query;

  const SetGeocoding(this.query);

  @override
  List<Object> get props => [query];
}

class SetReverseGeocoding extends LocationSettingEvent {
  final String coords;

  const SetReverseGeocoding(this.coords);

  @override
  List<Object> get props => [coords];
}

class ResetLocationSetting extends LocationSettingEvent {}

class SetCurrentLocation extends LocationSettingEvent {
  final double lat;
  final double lng;

  const SetCurrentLocation(this.lat, this.lng);

  @override
  List<Object> get props => [lat, lng];
}
