
import 'package:fishingmemory/core/data/repository/permission/permission_repository.dart';
import 'package:fishingmemory/core/utils/AppConstants.dart';
import 'package:fishingmemory/core/utils/keys.dart';
import 'package:fishingmemory/feature/permission/cubit/permission_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PermissionCubit extends Cubit<PermissionState> {
  final PermissionRepository permissionRepository;

  PermissionCubit({required this.permissionRepository}) : super(PermissionInitial());

  Future<void> writePermission() async {
    await permissionRepository.writePermission(Keys.permissionKey, AppConstants.permissionValue);
    emit(PermissionSuccess());
  }
} 