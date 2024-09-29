import 'package:equatable/equatable.dart';

abstract class GalleryEvent extends Equatable {
  const GalleryEvent();

  @override
  List<Object?> get props => [];
}

class FetchGalleryImages extends GalleryEvent {}

class SelectGalleryImage extends GalleryEvent {
  final int selectedIndex;

  const SelectGalleryImage(this.selectedIndex);

  @override
  List<Object?> get props => [selectedIndex];
}
