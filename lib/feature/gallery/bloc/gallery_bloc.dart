import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:fishingmemory/core/resource/resource.dart';
import 'package:photo_manager/photo_manager.dart';

import 'gallery_event.dart';
import 'gallery_state.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  GalleryBloc() : super(GalleryInitial()) {
    on<FetchGalleryImages>(onFetchGalleryImages);
  }

  Future<void> onFetchGalleryImages(
      FetchGalleryImages event, Emitter<GalleryState> emit) async {
    emit(GalleryLoading());
    final Map<int, Uint8List?> thumbnailCache = {};

    final PermissionState result = await PhotoManager.requestPermissionExtend();
    if (!result.isAuth) {
      emit(const GalleryError('권한을 허용해주세요.'));
      PhotoManager.openSetting();
      return;
    }

    List<AssetPathEntity> albums = await PhotoManager.getAssetPathList(
      type: RequestType.image,
      onlyAll: true,
      filterOption: FilterOptionGroup(
        imageOption: const FilterOption(
          sizeConstraint: SizeConstraint(minWidth: 100, minHeight: 100),
        ),
      ),
    );

    if (albums.isNotEmpty) {
      List<AssetEntity> media = await albums[0].getAssetListPaged(
        page: 0,
        size: 100,
      );
      emit(GalleryLoaded(mediaList: media, thumbnailCache: thumbnailCache));
    } else {
      emit(const GalleryError(AppStrings.galleryImageLoadErrorMessage));
    }
  }
}
