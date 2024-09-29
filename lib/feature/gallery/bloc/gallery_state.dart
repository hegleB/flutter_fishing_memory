import 'dart:typed_data';
import 'package:equatable/equatable.dart';
import 'package:photo_manager/photo_manager.dart';

abstract class GalleryState extends Equatable {
  const GalleryState();

  @override
  List<Object?> get props => [];
}

class GalleryInitial extends GalleryState {}

class GalleryLoading extends GalleryState {}

class GalleryLoaded extends GalleryState {
  final List<AssetEntity> mediaList;
  final Map<int, Uint8List?> thumbnailCache;
  final AssetEntity? selectedGalleryImage;

  const GalleryLoaded({
    required this.mediaList,
    required this.thumbnailCache,
    this.selectedGalleryImage,
  });

  @override
  List<Object?> get props => [mediaList, thumbnailCache, selectedGalleryImage];
}

class GalleryError extends GalleryState {
  final String error;

  const GalleryError(this.error);

  @override
  List<Object?> get props => [error];
}
