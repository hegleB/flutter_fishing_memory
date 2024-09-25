import 'dart:async';

import 'package:fishingmemory/core/data/repository/map/map_repository.dart';
import 'package:fishingmemory/core/models/map/geocoding.dart';
import 'package:fishingmemory/core/utils/AppConstants.dart';
import 'package:equatable/equatable.dart';
import 'package:fishingmemory/feature/location/bloc/geocoding_state.dart';
import 'package:fishingmemory/feature/location/bloc/reverse_geocoding_state.dart';
import 'package:fishingmemory/feature/location/regions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'location_setting_event.dart';
part 'location_setting_state.dart';

class LocationSettingBloc
    extends Bloc<LocationSettingEvent, LocationSettingState> {
  final MapRepository mapRepository;

  LocationSettingBloc({required this.mapRepository})
      : super(LocationSettingState()) {
    on<ClickedNextPage>(onNextPage);
    on<ClickedPreviousPage>(onPreviousPage);
    on<SetDoIndex>(onSetDoIndex);
    on<SetCityIndex>(onSetCityIndex);
    on<SetSelectedIndex>(onSetSelectedIndex);
    on<SetSelectedRegionName>(onSetSelectedRegionName);
    on<ResetLocationSetting>(onResetLocationSetting);
    on<SetGeocoding>(fetchGeocoding);
    on<SetReverseGeocoding>(fetchReverseGeocoding);
    on<SetCurrentLocation>(onSetCurrentLocation);
  }

  Future<void> fetchGeocoding(
      SetGeocoding event, Emitter<LocationSettingState> emit) async {
    emit(state.copyWith(geoCodingState: GeoCodingLoading()));

    try {
      final geocoding = await mapRepository.getGeocoding(event.query);
      emit(state.copyWith(
        geoCodingState: GeoCodingSuccess(geocoding: geocoding),
        lat: double.parse(geocoding.y),
        lng: double.parse(geocoding.x),
      ));
    } catch (error) {
      emit(state.copyWith(geoCodingState: GeoCodingError(error.toString())));
    }
  }

  Future<void> fetchReverseGeocoding(
      SetReverseGeocoding event, Emitter<LocationSettingState> emit) async {
    emit(state.copyWith(
      reverseGeoCodingState: ReverseGeoCodingLoading(),
    ));

    try {
      final reverseGeocoding =
          await mapRepository.getReverseGeocoding(event.coords);
      List<String> areaNames = reverseGeocoding.areaName.split(" ");
      String doName = areaNames[0];
      String cityName = areaNames[1];
      String addressNumbers = areaNames.sublist(2).join(" ");
      List<String> coords = event.coords.split(",");
      double lat = double.parse(coords[1]);
      double lng = double.parse(coords[0]);
      emit(state.copyWith(
        reverseGeoCodingState: ReverseGeoCodingSuccess(
          reverseGeocoding: reverseGeocoding,
        ),
        selectedRegionName: [doName, cityName, addressNumbers],
        lat: lat,
        lng: lng,
      ));
    } catch (error) {
      emit(state.copyWith(
        reverseGeoCodingState: ReverseGeoCodingError(error.toString()),
      ));
    }
  }

  void onNextPage(ClickedNextPage event, Emitter<LocationSettingState> emit) {
    int nextPage = state.currentPage;
    if (state.doIndex == Regions.values.length - 1) {
      nextPage += 2;
    } else {
      nextPage = (nextPage < 3) ? nextPage + 1 : nextPage;
    }

    List<String> updatedRegionName = [...state.selectedRegionName];
    if (state.cityIndex != -1 && nextPage == 1) {
      final region =
          RegionData.regions[state.doIndex].subRegions[state.cityIndex];
      updatedRegionName = [
        ...updatedRegionName,
        region != AppConstants.noRegionName ? region : ""
      ];
    }

    emit(state.copyWith(
      currentPage: nextPage,
      selectedRegionName: updatedRegionName,
      region: Regions.values[state.doIndex],
    ));
  }

  void onPreviousPage(
      ClickedPreviousPage event, Emitter<LocationSettingState> emit) {
    int previousPage = state.currentPage;

    if (state.doIndex == Regions.values.length - 1) {
      previousPage -= 2;
    } else {
      previousPage = (previousPage > 0) ? previousPage - 1 : previousPage;
    }

    List<String> updatedRegionName = state.selectedRegionName;
    if (previousPage == 0 && updatedRegionName.length == 2) {
      updatedRegionName = updatedRegionName.sublist(0, 1);
    } else if (previousPage == 1 && updatedRegionName.length == 3) {
      updatedRegionName = updatedRegionName.sublist(0, 2);
    }

    final newRegion =
        (previousPage > 0) ? Regions.values[state.doIndex] : Regions.region;

    emit(state.copyWith(
      currentPage: previousPage,
      region: newRegion,
      selectedRegionName: updatedRegionName,
    ));
  }

  void onSetDoIndex(SetDoIndex event, Emitter<LocationSettingState> emit) {
    if (event.doIndex != state.doIndex) {
      emit(state.copyWith(
        doIndex: event.doIndex,
        cityIndex: -1,
        selectedRegionName: [],
      ));
    }
  }

  void onSetCityIndex(SetCityIndex event, Emitter<LocationSettingState> emit) {
    List<String> regionsNames = state.selectedRegionName;
    if (state.cityIndex != -1) {
      regionsNames.removeLast();
    }
    emit(state.copyWith(
        cityIndex: event.cityIndex, selectedRegionName: regionsNames));
  }

  void onSetSelectedIndex(
      SetSelectedIndex event, Emitter<LocationSettingState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  void onSetSelectedRegionName(
      SetSelectedRegionName event, Emitter<LocationSettingState> emit) {
    List<String> regionsNames = state.selectedRegionName;
    if (regionsNames.length == 3) {
      regionsNames.removeLast();
    } else if (state.doIndex == Regions.values.length - 1) {
      List<String> parts = event.regionName.split(" ");
      if (parts.length >= 3) {
        String doName = parts[0];
        String cityName = parts[1];
        String addressNumber = parts.sublist(2, parts.length).join(" ");
        regionsNames = [doName, cityName, addressNumber];
      }
    } else if (!event.regionName.contains(AppConstants.noRegionName) &&
        regionsNames.length == state.currentPage) {
      regionsNames.add(event.regionName);
    }
    emit(state.copyWith(selectedRegionName: regionsNames));
  }

  void onResetLocationSetting(
      ResetLocationSetting event, Emitter<LocationSettingState> emit) {
    emit(LocationSettingState().copyWith());
  }

  void onSetCurrentLocation(
      SetCurrentLocation event, Emitter<LocationSettingState> emit) {
    emit(state.copyWith(
      lat: event.lat,
      lng: event.lng,
      geoCodingState: GeoCodingSuccess(
        geocoding: Geocoding(coords: "${event.lat},${event.lng}"),
      ),
    ));
  }
}
