import 'dart:typed_data';

import 'package:fishingmemory/core/data/repository/auth/auth_repository.dart';
import 'package:fishingmemory/core/data/repository/memo/memo_repository.dart';
import 'package:fishingmemory/core/models/memo/memo_info.dart';
import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/core/widgets/default_circular_progress_indicator.dart';
import 'package:fishingmemory/feature/create/bloc/memo_create_bloc.dart';
import 'package:fishingmemory/feature/create/bloc/memo_create_event.dart';
import 'package:fishingmemory/feature/create/bloc/memo_create_state.dart';
import 'package:fishingmemory/feature/gallery/view/gallery_screen.dart';
import 'package:fishingmemory/feature/location/location_setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:photo_manager/photo_manager.dart';

class MemoCreateScreen extends StatefulWidget {
  const MemoCreateScreen({
    super.key,
  });

  @override
  State<MemoCreateScreen> createState() => _MemoCreateScreenState();
}

class _MemoCreateScreenState extends State<MemoCreateScreen> {
  late bool isShowCalendar;
  late ScrollController scrollController;
  late bool isConnectNetwork;
  bool isFreshWaterSelected = false;
  bool isSaltWaterSelected = false;
  DateTime selectedDate = DateTime.now();
  String location = "";
  String coords = "";
  Uint8List? selectedGalleryImage;

  @override
  void initState() {
    super.initState();
    isShowCalendar = false;
    scrollController = ScrollController();
    isConnectNetwork = true;
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MemoCreateBloc(
        memoRepository: RepositoryProvider.of<MemoRepository>(context),
        authRepository: RepositoryProvider.of<AuthRepository>(context),
      ),
      child: BlocListener<MemoCreateBloc, MemoCreateState>(
        listener: (context, state) {
          if (state.memoCreateUiState == MemoCreateUiState.error) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(AppStrings.memoCreateErrorMessage)));
          }
        },
        child: BlocBuilder<MemoCreateBloc, MemoCreateState>(
          builder: (context, state) {
            final memoCreateBloc = context.read<MemoCreateBloc>();

            return Scaffold(
              appBar: appBar(),
              body: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          titleField(
                            (title) => memoCreateBloc.add(SetTitle(title)),
                          ),
                          const SizedBox(height: 10),
                          imageField(
                            (image) => memoCreateBloc.add(SetImage(image)),
                            selectedImage: state.memoInfo.image,
                          ),
                          const SizedBox(height: 10),
                          buttonGroup(
                            (waterType) =>
                                memoCreateBloc.add(SetWaterType(waterType)),
                            (size) => memoCreateBloc.add(SetSize(size)),
                          ),
                          const SizedBox(height: 10),
                          locationDateFields(
                            (location) =>
                                memoCreateBloc.add(SetLocation(location)),
                            (coords) => memoCreateBloc.add(SetCoords(coords)),
                            (date) => memoCreateBloc.add(SetDate(date)),
                          ),
                          const SizedBox(height: 10),
                          fishTypeFields((fishType) =>
                              memoCreateBloc.add(SetFishType(fishType))),
                          const SizedBox(height: 10),
                          contentFields((content) =>
                              memoCreateBloc.add(SetContent(content))),
                          const SizedBox(height: 10),
                          saveButton(
                            state.memoInfo.isValidMemo,
                            () => memoCreateBloc.add(CreateMemo()),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                  if (state.memoCreateUiState == MemoCreateUiState.loading)
                    const CenterCircularProgressIndicator(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget titleField(Function(String) onTitleChanged) {
    return FieldContainer(
      label: AppStrings.title,
      child: TextField(
        decoration: InputDecoration(
          hintText: AppStrings.inputTitle,
          border: defaultOutlineInputBorder(),
          focusedBorder: defaultOutlineInputBorder(),
          enabledBorder: defaultOutlineInputBorder(),
        ),
        cursorColor: AppColors.black,
        onChanged: onTitleChanged,
      ),
    );
  }

  Widget imageField(
    Function(Uint8List) onImageChanged, {
    required String selectedImage,
  }) {
    return FieldContainer(
      label: AppStrings.location,
      icon: AppIcons.marker,
      iconColor: AppColors.blue600,
      child: GestureDetector(
        onTap: () => Navigator.of(context)
            .push(
                MaterialPageRoute(builder: (context) => const GalleryScreen()))
            .then((result) async {
          if (result != null) {
            AssetEntity image = result['selectedImage'];
            final imageData = await getImageData(image);
            if (imageData != null) {
              setState(() {
                selectedGalleryImage = imageData;
              });
              onImageChanged(imageData);
            }
          }
        }),
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.gray200, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: selectedGalleryImage != null
                ? Image.memory(
                    selectedGalleryImage!,
                    fit: BoxFit.cover,
                  )
                : Image.asset(AppIcons.image),
          ),
        ),
      ),
    );
  }

  Future<Uint8List?> getImageData(AssetEntity image) async {
    final imageData = await image.originBytes;
    if (imageData != null) {
      return imageData;
    }
    return null;
  }

  Widget buttonGroup(
    Function(String) onWaterTypeChanged,
    Function(String) onSizeChanged,
  ) {
    return Row(
      children: [
        waterTypeChip(
          label: AppStrings.freshWater,
          isSelected: isFreshWaterSelected,
          onSelected: () => setState(() {
            isFreshWaterSelected = true;
            isSaltWaterSelected = false;
            onWaterTypeChanged(
              AppStrings.freshWater,
            );
          }),
        ),
        const SizedBox(width: 10),
        waterTypeChip(
          label: AppStrings.seaWater,
          isSelected: isSaltWaterSelected,
          onSelected: () => setState(() {
            isFreshWaterSelected = false;
            isSaltWaterSelected = true;
            onWaterTypeChanged(
              AppStrings.seaWater,
            );
          }),
        ),
        const Spacer(),
        sizeInput(onSizeChanged),
      ],
    );
  }

  Widget waterTypeChip({
    required String label,
    required bool isSelected,
    required VoidCallback onSelected,
  }) {
    return RawChip(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      label: Text(
        label,
        style: AppStyles.bodyLarge.copyWith(
          color: isSelected ? AppColors.white : AppColors.black,
        ),
      ),
      selected: isSelected,
      onSelected: (_) => onSelected(),
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: isSelected ? AppColors.blue500 : AppColors.gray200,
          width: 2,
        ),
      ),
      selectedColor: AppColors.blue500,
      backgroundColor: AppColors.white,
    );
  }

  Widget sizeInput(
    Function(String) onSizeChanged,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 50,
          child: TextField(
            keyboardType: const TextInputType.numberWithOptions(),
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray200, width: 2),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray200, width: 2),
              ),
            ),
            cursorColor: AppColors.black,
            onChanged: onSizeChanged,
          ),
        ),
        const SizedBox(width: 10),
        const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(AppStrings.sizeInCm),
        ),
      ],
    );
  }

  Widget locationDateFields(
    Function(String) onLocationChanged,
    Function(String) onCoordsChanged,
    Function(String) onDateChanged,
  ) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: locationField(
            onLocationChanged,
            onCoordsChanged,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: dateField(onDateChanged),
        ),
      ],
    );
  }

  Widget locationField(
    Function(String) onLocationChanged,
    Function(String) onCoordsChanged,
  ) {
    return FieldContainer(
      label: AppStrings.location,
      icon: AppIcons.marker,
      iconColor: AppColors.blue600,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(
                  builder: (context) => const LocationSettingScreen()))
              .then((result) {
            if (result != null) {
              setState(() {
                location = result['location'];
              });
              onLocationChanged(result['location']);
              onCoordsChanged(result['coords']);
            }
          });
          ;
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.gray200, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                location,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget dateField(
    Function(String) onDateChanged,
  ) {
    return FieldContainer(
      label: AppStrings.date,
      icon: AppIcons.date,
      iconColor: Colors.orange,
      child: GestureDetector(
        onTap: () async {
          DateTime? pickedDate = await showCustomCalendar(context);
          if (pickedDate != null) {
            setState(() {
              selectedDate = pickedDate;
              onDateChanged(
                  DateFormat(AppStrings.appDateFormat).format(selectedDate));
            });
          }
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.gray200, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  DateFormat(AppStrings.appDateFormat).format(selectedDate)),
            ),
          ),
        ),
      ),
    );
  }

  Widget fishTypeFields(
    Function(String) onFishTypeChanged,
  ) {
    return FieldContainer(
      label: AppStrings.fishType,
      child: TextField(
        decoration: InputDecoration(
          hintText: AppStrings.inputFishType,
          border: defaultOutlineInputBorder(),
          focusedBorder: defaultOutlineInputBorder(),
          enabledBorder: defaultOutlineInputBorder(),
        ),
        cursorColor: AppColors.black,
        onChanged: onFishTypeChanged,
      ),
    );
  }

  Widget contentFields(
    Function(String) onContentChanged,
  ) {
    return FieldContainer(
      label: AppStrings.content,
      child: TextField(
        maxLines: 3,
        decoration: InputDecoration(
          hintText: AppStrings.inputCotent,
          border: defaultOutlineInputBorder(),
          focusedBorder: defaultOutlineInputBorder(),
          enabledBorder: defaultOutlineInputBorder(),
        ),
        cursorColor: AppColors.black,
        onChanged: onContentChanged,
      ),
    );
  }

  Widget saveButton(
    bool isEnabeld,
    Function()? onSaveButtonPressed,
  ) {
    return Center(
      child: ElevatedButton(
        onPressed: isEnabeld ? () => onSaveButtonPressed!() : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue500,
        ),
        child: Center(
          child: Text(
            AppStrings.save,
            style: AppStyles.displayLarge.copyWith(
              color: AppColors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }

  Future<DateTime?> showCustomCalendar(BuildContext context) async {
    DateTime tempPickedDate = selectedDate;

    return showDialog<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Theme(
              data: ThemeData.light().copyWith(
                colorScheme: const ColorScheme.light(
                  primary: AppColors.blue500,
                  onPrimary: AppColors.white,
                  onSurface: AppColors.black,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.blue,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        DateFormat('yyyy년\nMM월 dd일 (E)', 'ko')
                            .format(tempPickedDate),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  CalendarDatePicker(
                    initialDate: tempPickedDate,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2999),
                    onDateChanged: (DateTime date) {
                      setState(() {
                        tempPickedDate = date;
                      });
                    },
                  ),
                  calendarActions(tempPickedDate),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  Widget calendarActions(DateTime tempPickedDate) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          dialogButton(AppStrings.cancel, AppColors.white, AppColors.black, () {
            Navigator.of(context).pop();
          }),
          const SizedBox(width: 10),
          dialogButton(AppStrings.selection, AppColors.blue500, AppColors.white,
              () {
            Navigator.of(context).pop(tempPickedDate);
          }),
        ],
      ),
    );
  }

  Widget dialogButton(
      String label, Color bgColor, Color textColor, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: const Size(80, 30),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: textColor),
      ),
    );
  }
}

class FieldContainer extends StatelessWidget {
  final String label;
  final Widget child;
  final String? icon;
  final Color? iconColor;
  final double width;
  final double height;

  const FieldContainer({
    super.key,
    required this.label,
    required this.child,
    this.icon,
    this.iconColor,
    this.width = 24,
    this.height = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (icon != null)
              Image.asset(icon!, width: width, height: 24, color: iconColor),
            if (icon != null) const SizedBox(width: 5),
            Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 10),
        child,
      ],
    );
  }
}

OutlineInputBorder defaultOutlineInputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(width: 2, color: AppColors.gray200),
  );
}
