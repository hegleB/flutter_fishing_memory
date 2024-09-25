import 'dart:async';
import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/core/widgets/default_circular_progress_indicator.dart';
import 'package:fishingmemory/feature/location/bloc/geocoding_state.dart';
import 'package:fishingmemory/feature/location/bloc/location_setting_bloc.dart';
import 'package:fishingmemory/feature/location/bloc/reverse_geocoding_state.dart';
import 'package:fishingmemory/feature/location/regions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationSettingScreen extends StatefulWidget {
  const LocationSettingScreen({super.key});

  @override
  State<LocationSettingScreen> createState() => _LocationSettingScreenState();
}

class _LocationSettingScreenState extends State<LocationSettingScreen> {
  bool hasLocationPermission = false;

  late NaverMapController mapController;
  late LocationSettingBloc locationSettingBloc;

  @override
  void initState() {
    super.initState();
    initializePermissions();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    locationSettingBloc = context.read<LocationSettingBloc>();
  }

  @override
  void dispose() {
    locationSettingBloc.add(ResetLocationSetting());
    super.dispose();
  }

  Future<void> initializePermissions() async {
    await requestPermissions();
  }

  Future<void> requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.locationWhenInUse,
    ].request();

    hasLocationPermission = statuses[Permission.location]!.isGranted &&
        statuses[Permission.locationWhenInUse]!.isGranted;

    if (!hasLocationPermission) {
      showPermissionSettingsDialog();
    }
  }

  void showPermissionSettingsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(AppStrings.requestPermission),
          content: const Text(AppStrings.permissionNeededMessage),
          actions: [
            dialogButton(AppStrings.cancel, Navigator.of(context).pop),
            dialogButton(AppStrings.goToSettings, openAppSettings),
          ],
        );
      },
    );
  }

  Widget dialogButton(String text, Function() onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.bodySmall.copyWith(color: AppColors.blue600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationSettingBloc, LocationSettingState>(
      listener: (context, state) => handleStateChanges(state),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: BlocBuilder<LocationSettingBloc, LocationSettingState>(
          builder: (context, state) => buildBodyContent(state),
        ),
      ),
    );
  }

  void handleStateChanges(LocationSettingState state) {
    if (state.reverseGeoCodingState is ReverseGeoCodingError ||
        state.geoCodingState is GeoCodingError) {
      showSnackBar("위치 이름 불러오는데 실패하였습니다.");
    }
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget buildBodyContent(LocationSettingState state) {
    List<String> selectedRegionNames = getSelectedRegionNames(state);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(children: [
        if (state.reverseGeoCodingState is ReverseGeoCodingLoading ||
            state.geoCodingState is GeoCodingLoading)
          const CenterCircularProgressIndicator(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            locationHeader(
                state.currentPage, state.selectedRegionName.join(" ")),
            const SizedBox(height: 20),
            if (state.currentPage == 0) currentLocationItem(state),
            const Divider(),
            Expanded(
              child: state.currentPage == 2 &&
                      state.geoCodingState is GeoCodingSuccess
                  ? mapContent(
                      onMapReady: (controller) {
                        mapController = controller;
                        mapController
                          ..updateCamera(NCameraUpdate.fromCameraPosition(
                            NCameraPosition(
                                target: NLatLng(
                                  state.lat,
                                  state.lng,
                                ),
                                zoom: 14),
                          ))
                          ..addOverlay(NMarker(
                            id: 'marker',
                            position: NLatLng(
                              state.lat,
                              state.lng,
                            ),
                            icon: const NOverlayImage.fromAssetImage(
                                AppIcons.mapMarker),
                          ));
                      },
                      onTapped: (latLng) {
                        context.read<LocationSettingBloc>().add(
                            SetReverseGeocoding(
                                "${latLng.longitude},${latLng.latitude}"));
                        mapController
                          ..updateCamera(NCameraUpdate.fromCameraPosition(
                            NCameraPosition(
                              target: NLatLng(
                                latLng.latitude,
                                latLng.longitude,
                              ),
                              zoom: 14,
                            ),
                          ))
                          ..addOverlay(NMarker(
                            id: 'marker',
                            position: NLatLng(
                              latLng.latitude,
                              latLng.longitude,
                            ),
                            icon: const NOverlayImage.fromAssetImage(
                              AppIcons.mapMarker,
                            ),
                          ));
                      },
                      lat: state.lng,
                      lng: state.lat,
                    )
                  : regionContent(
                      state.currentPage == 0 ? state.doIndex : state.cityIndex,
                      (index) => handleRegionSelection(state, index),
                      selectedRegionNames,
                      (regionName) => context
                          .read<LocationSettingBloc>()
                          .add(SetSelectedRegionName(regionName)),
                    ),
            ),
            const SizedBox(height: 20),
            bottomNavigationButtons(state),
          ],
        ),
      ]),
    );
  }

  List<String> getSelectedRegionNames(LocationSettingState state) {
    if (state.region == Regions.region) {
      return RegionData.regions.map((region) => region.name).toList();
    } else if (state.doIndex != Regions.values.length - 1) {
      return RegionData.regions[state.doIndex].subRegions;
    } else {
      return [];
    }
  }

  Widget currentLocationItem(LocationSettingState state) {
    return regionItem(
      region: AppStrings.currentLocation,
      onClick: () async {
        Position position = await Geolocator.getCurrentPosition();
        context
            .read<LocationSettingBloc>()
            .add(SetCurrentLocation(state.lat, state.lng));
        context
            .read<LocationSettingBloc>()
            .add(SetDoIndex(Regions.values.length - 1));
        context.read<LocationSettingBloc>().add(
            SetReverseGeocoding("${position.longitude},${position.latitude}"));
      },
      isSelected: state.doIndex == Regions.values.length - 1,
    );
  }

  void handleRegionSelection(LocationSettingState state, int index) {
    context.read<LocationSettingBloc>().add(SetSelectedIndex(index));
    if (state.currentPage == 0) {
      context.read<LocationSettingBloc>().add(SetDoIndex(index));
    } else {
      context.read<LocationSettingBloc>().add(SetCityIndex(index));
    }
  }

  Widget bottomNavigationButtons(LocationSettingState state) {
    return Stack(
      children: [
        if (state.currentPage > 0)
          Align(
            alignment: Alignment.bottomLeft,
            child: navigationButton(
              AppStrings.previous,
              onPressed: () => context
                  .read<LocationSettingBloc>()
                  .add(ClickedPreviousPage()),
            ),
          ),
        Align(
          alignment: Alignment.bottomRight,
          child: navigationButton(
            state.currentPage != 2 ? AppStrings.next : AppStrings.setting,
            onPressed: state.doIndex == -1
                ? null
                : () {
                    if (state.currentPage == 1) {
                      context.read<LocationSettingBloc>().add(
                          SetGeocoding(state.selectedRegionName.join(" ")));
                    } else if (state.currentPage == 2) {
                      String coords = state.geoCodingState is GeoCodingSuccess
                          ? (state.geoCodingState as GeoCodingSuccess)
                              .geocoding
                              .coords
                          : "";
                      Navigator.of(context).pop({
                        'location': state.selectedRegionName.join(" "),
                        'coords': coords,
                      });
                    }
                    context.read<LocationSettingBloc>().add(ClickedNextPage());
                  },
          ),
        ),
      ],
    );
  }

  ElevatedButton navigationButton(String text, {VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue500,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBackgroundColor: AppColors.gray100,
      ),
      child: Text(
        text,
        style: const TextStyle(color: AppColors.white, fontSize: 14),
      ),
    );
  }

  Widget mapContent({
    required Function(NLatLng) onTapped,
    required Function(NaverMapController) onMapReady,
    double lat = 0,
    double lng = 0,
  }) {
    return NaverMap(
      options: NaverMapViewOptions(
        initialCameraPosition: NCameraPosition(
          target: NLatLng(lat, lng),
          zoom: 14,
        ),
      ),
      onMapReady: onMapReady,
      onMapTapped: (point, latLng) {
        onTapped(latLng);
      },
      onCameraChange: (position, reason) {},
      onCameraIdle: () {},
    );
  }

  GridView regionContent(
    int selectedIndex,
    Function(int) onClick,
    List<String> regions,
    Function(String) setRegionName,
  ) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 12.0,
        childAspectRatio: 3.2,
      ),
      itemCount: regions.length,
      itemBuilder: (context, index) {
        return regionItem(
          onClick: () {
            onClick(index);
            setRegionName(regions[index]);
          },
          region: regions[index],
          isSelected: index == selectedIndex,
        );
      },
    );
  }

  Widget locationHeader(int currentPage, String selectedRegionName) {
    String title = currentPage == 0
        ? AppStrings.selectionDo
        : currentPage == 1
            ? AppStrings.selectionCity
            : AppStrings.selectionMap;
    String subTitle = currentPage == 0
        ? AppStrings.doName
        : currentPage == 1
            ? AppStrings.cityName
            : AppStrings.map;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.headlineLarge.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  subTitle,
                  style: AppStyles.displaySmall.copyWith(
                    fontSize: 15,
                    color: AppColors.gray300,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  selectedRegionName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget regionItem({
    Function()? onClick,
    required String region,
    bool isSelected = true,
  }) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: 120,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? AppColors.blue600 : AppColors.gray300,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                region,
                style: AppStyles.displaySmall.copyWith(
                  fontSize: 10,
                  color: isSelected ? AppColors.blue600 : AppColors.black,
                ),
              ),
            ),
            if (isSelected)
              const Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Icon(
                  Icons.check,
                  size: 20,
                  color: AppColors.blue600,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
