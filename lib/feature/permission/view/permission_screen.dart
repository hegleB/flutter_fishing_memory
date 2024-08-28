import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/feature/login/view/login_screen.dart';
import 'package:fishingmemory/feature/permission/cubit/permission_cubit.dart';
import 'package:fishingmemory/feature/permission/cubit/permission_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({super.key});

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  bool hasLocationPermission = false;

  Future<void> checkPermission() async {
    final coarseStatus = await Permission.locationWhenInUse.status;
    final fineStatus = await Permission.location.status;
    setState(() {
      hasLocationPermission =
          coarseStatus.isGranted && fineStatus.isGranted;
    });
    if (hasLocationPermission) {
      _navigateToLogin();
    }
  }

  Future<void> _requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.locationWhenInUse,
      Permission.camera,
      Permission.storage,
    ].request();

    bool hasLocationPermission = statuses[Permission.location]!.isGranted &&
        statuses[Permission.locationWhenInUse]!.isGranted;

    if (hasLocationPermission) {
      
    } else {
      _showPermissionSettingsDialog();
    }
  }

  void _navigateToLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void _showPermissionSettingsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(AppStrings.requestPermission),
          content: const Text(AppStrings.permissionNeededMessage),
          actions: <Widget>[
            TextButton(
              child: Text(
                AppStrings.cancel,
                style: AppStyles.bodySmall.copyWith(
                  color: AppColors.blue600,
                ),  
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                AppStrings.goToSettings,
                style: AppStyles.bodySmall.copyWith(
                  color: AppColors.blue600,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                openAppSettings();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<PermissionCubit, PermissionState>(
          builder: (context, state) {
            if (state is PermissionSuccess) {
              _navigateToLogin();
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PermissionTitle(),
                      PermissionSettingDescription(),
                      AccessPermission(permissionType: AppStrings.requiredPermission),
                      PermissionTypeDescription(
                        typeString: AppStrings.permissionLocation,
                        descriptionString: AppStrings.permissionLocationDescription,
                      ),
                      AccessPermission(permissionType: AppStrings.selectedPermission),
                      PermissionTypeDescription(
                        typeString: AppStrings.permissionCamera,
                        descriptionString: AppStrings.permissionCameraDescription,
                      ),
                      PermissionTypeDescription(
                        typeString: AppStrings.permissionStorage,
                        descriptionString: AppStrings.permissionStorageDescription,
                      ),
                      PermissionOptionalDescription(
                        descriptionString: AppStrings.permissionOptionalDescription,
                      ),
                      PermissionOptionalDescription(
                        descriptionString: AppStrings.permissionOptionalSetting,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<PermissionCubit>().writePermission();
                      _requestPermissions();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blue600,
                      minimumSize: const Size(double.infinity, 55),
                    ),
                    child: Text(
                      AppStrings.confirm,
                      style: AppStyles.displayMedium.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            );
          }
        )
    );
  }
}

class AccessPermission extends StatelessWidget {
  final String permissionType;

  const AccessPermission({super.key, required this.permissionType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        permissionType,
        style: AppStyles.displaySmall.copyWith(
          color: AppColors.blue500,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        )
      ),
    );
  }
}

class PermissionSettingDescription extends StatelessWidget {
  const PermissionSettingDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        AppStrings.permissionDescription,
        style: AppStyles.bodySmall.copyWith(
          fontSize: 12,
        ),
      ),
    );
  }
}

class PermissionTitle extends StatelessWidget {
  const PermissionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.permissionTitle,
      style: AppStyles.headlineLarge.copyWith(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      )
    );
  }
}

class PermissionOptionalDescription extends StatelessWidget {
  final String descriptionString;

  const PermissionOptionalDescription({super.key, required this.descriptionString});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            children: [
              Text(AppStrings.dot),
            ],
          ),
          Expanded(
            child: Text(descriptionString),
          ),
        ],
      ),
    );
  }
}

class PermissionTypeDescription extends StatelessWidget {
  final String typeString;
  final String descriptionString;

  const PermissionTypeDescription({super.key, 
    required this.typeString,
    required this.descriptionString,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            typeString,
            style: AppStyles.bodySmall.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(descriptionString),
          ),
        ],
      ),
    );
  }
}
