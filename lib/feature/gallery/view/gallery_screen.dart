import 'dart:typed_data';
import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/core/widgets/default_circular_progress_indicator.dart';
import 'package:fishingmemory/feature/gallery/bloc/gallery_bloc.dart';
import 'package:fishingmemory/feature/gallery/bloc/gallery_state.dart';
import 'package:fishingmemory/feature/gallery/bloc/gallery_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  final ValueNotifier<AssetEntity?> selectedGalleryImage = ValueNotifier(null);

  Widget gridItem(
      BuildContext context, int index, List<AssetEntity> mediaList) {
    if (index == 0) {
      return cameraTile();
    }

    final AssetEntity media = mediaList[index - 1];

    return FutureBuilder<Uint8List?>(
      future: media.thumbnailData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return ValueListenableBuilder<AssetEntity?>(
            valueListenable: selectedGalleryImage,
            builder: (context, selectedImage, child) {
              final bool isSelected = selectedImage == media;
              return mediaTile(media, snapshot.data!, isSelected);
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget cameraTile() {
    return GestureDetector(
      onTap: () => print('사진 찍기'),
      child: Container(
        color: AppColors.white,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.camera_alt, size: 40),
              Text(AppStrings.takePicture),
            ],
          ),
        ),
      ),
    );
  }

  Widget mediaTile(AssetEntity media, Uint8List thumbnail, bool isSelected) {
    return GestureDetector(
      onTap: () => selectedGalleryImage.value = media,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? AppColors.blue600 : Colors.transparent,
                width: 2,
              ),
            ),
            child: Image.memory(
              thumbnail,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Icon(
              isSelected ? Icons.check_circle : Icons.circle_outlined,
              color: isSelected ? Colors.blue : Colors.grey,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GalleryBloc()..add(FetchGalleryImages()),
      child: BlocListener<GalleryBloc, GalleryState>(
        listener: (context, state) {
          if (state is GalleryError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text(AppStrings.galleryImageLoadErrorMessage)),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            actions: [
              ValueListenableBuilder<AssetEntity?>(
                valueListenable: selectedGalleryImage,
                builder: (context, selectedImage, child) {
                  return TextButton(
                    onPressed: selectedImage != null
                        ? () => Navigator.of(context).pop({
                              'selectedImage': selectedImage,
                            })
                        : null,
                    child: Text(
                      AppStrings.selection,
                      style: TextStyle(
                        color:
                            selectedImage != null ? Colors.blue : Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          body: BlocBuilder<GalleryBloc, GalleryState>(
            builder: (context, state) {
              if (state is GalleryLoading) {
                return const CenterCircularProgressIndicator();
              } else if (state is GalleryLoaded) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                  itemCount: state.mediaList.length + 1,
                  itemBuilder: (context, index) =>
                      gridItem(context, index, state.mediaList),
                );
              } else if (state is GalleryError) {
                return const Center(
                    child: Text(AppStrings.galleryImageLoadErrorMessage));
              }
              return const Center(
                  child: Text(AppStrings.galleryImageLoadErrorMessage));
            },
          ),
        ),
      ),
    );
  }
}
