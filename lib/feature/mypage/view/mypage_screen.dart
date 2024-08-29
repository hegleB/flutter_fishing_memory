import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/core/utils/AppConstants.dart';
import 'package:fishingmemory/core/widgets/app_snackbar.dart';
import 'package:fishingmemory/core/widgets/default_circular_progress_indicator.dart';
import 'package:fishingmemory/feature/fishingspot/view/bookmark_screen.dart';
import 'package:fishingmemory/feature/login/view/login_screen.dart';
import 'package:fishingmemory/feature/mypage/cubit/mypage_cubit.dart';
import 'package:fishingmemory/feature/mypage/cubit/mypage_state.dart';
import 'package:fishingmemory/feature/mypage/view/dark_mode_screen.dart';
import 'package:fishingmemory/feature/program_information/view/program_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  late PackageInfo packageInfo = PackageInfo(
    appName: "",
    packageName: "",
    version: "",
    buildNumber: "",
    buildSignature: "",
    installerStore: "",
  );

  @override
  void initState() {
    super.initState();
    initPackageInfo();
  }

  Future<void> initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyPageCubit, MyPageState>(
      builder: (context, state) {
        final myPageCubit = context.read<MyPageCubit>();
        String? email = context.read<MyPageCubit>().email;
        final groupedItems = buildGroupedItems(email);
        if (state is MyPageError) {
          AppSnackbar.show(context, AppStrings.logoutErrorMessage);
        } else if (state is MyPageSuccess) {
          myPageCubit.emit(MyPageInitial());
          navigateToLogin();
        } 

        return Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    const SizedBox(height: 73),
                    for (int groupIndex = 0; groupIndex < groupedItems.length; groupIndex++)
                      ...[
                        for (var itemModel in groupedItems[groupIndex])
                          MyPageItem(
                            text: itemModel.text,
                            hasIcon: itemModel.hasIcon,
                            hasDescription: itemModel.hasDescription,
                            description: itemModel.description ?? "",
                            descriptionColor: itemModel.descriptionColor,
                            onClick: itemModel.onClick,
                          ),
                        if (groupIndex < groupedItems.length - 1) divider(),
                      ],
                  ],
                ),
              ),
            ),
            if (state is MyPageLoading)
              const CenterCircularProgressIndicator(),
          ],
        );
      },
    );
  }

  List<List<MyPageItemData>> buildGroupedItems(String? email) {
    return [
      [
        MyPageItemData(
          text: AppStrings.kakaoAccount,
          hasDescription: true,
          description: email ?? "",
          descriptionColor: AppColors.black,
        ),
        MyPageItemData(
          text: AppStrings.fishingSpotBookmark,
          hasIcon: true,
          onClick: navigateToBookmark,
        ),
        MyPageItemData(
          text: AppStrings.darkModeSetting,
          hasIcon: true,
          onClick: navigateToDarkMode,
        ),
      ],
      [
        MyPageItemData(
          text: AppStrings.versionInfo,
          hasDescription: true,
          description: packageInfo.version,
          descriptionColor: AppColors.gray300,
        ),
        MyPageItemData(
          text: AppStrings.termsOfService,
          hasIcon: true,
          onClick: () {
            navigateToProgramInfo(AppConstants.termsOfServiceUrl);
          },
        ),
        MyPageItemData(
          text: AppStrings.privacyPolice,
          hasIcon: true,
          onClick: () {
            navigateToProgramInfo(AppConstants.policePrivacyUrl);
          },
        ),
        MyPageItemData(
          text: AppStrings.opensourceLicense,
          hasIcon: true,
          onClick: () {
            navigateToProgramInfo(AppConstants.opensourceLicenseUrl);
          },
        ),
      ],
      [
        MyPageItemData(
          text: AppStrings.logout,
          hasIcon: true,
          onClick: () {
            context.read<MyPageCubit>().logout();
          },
        ),
        MyPageItemData(
          text: AppStrings.withdraw,
          hasIcon: true,
          onClick: () {
            context.read<MyPageCubit>().withdrawService();
          },
        ),
      ],
    ];
  }

  Widget divider() {
    return Container(
      height: 20,
      width: double.infinity,
      color: AppColors.grayBackground,
    );
  }

  void navigateToBookmark() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BookmarkScreen()));
  }

  void navigateToDarkMode() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DarkModeScreen()));
  }

  void navigateToProgramInfo(String webUrl) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInformationScreen(webUrl: webUrl)));
  }
  
  void navigateToLogin() {
    Future.delayed(Duration.zero, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class MyPageItemData {
  final String text;
  final bool hasIcon;
  final bool hasDescription;
  final String? description;
  final Color descriptionColor;
  final VoidCallback onClick;

  MyPageItemData({
    required this.text,
    this.hasIcon = false,
    this.hasDescription = false,
    this.description,
    this.descriptionColor = Colors.transparent,
    this.onClick = defaultOnClick,
  });

  static void defaultOnClick() {}
}

class MyPageItem extends StatelessWidget {
  final String text;
  final String description;
  final bool hasIcon;
  final bool hasDescription;
  final Color descriptionColor;
  final VoidCallback onClick;

  const MyPageItem({
    super.key,
    required this.text,
    this.description = "",
    this.hasIcon = false,
    this.hasDescription = false,
    this.descriptionColor = AppColors.black,
    this.onClick = defaultOnClick,
  });

  static void defaultOnClick() {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    text,
                    style: AppStyles.bodyLarge.copyWith(
                      color: AppColors.black,
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                  if (hasIcon)
                    Image.asset(
                      AppIcons.arrowForward,
                      color: AppColors.black,
                      width: 12,
                      height: 12,
                    ),
                  if (hasDescription)
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 15,
                        color: descriptionColor,
                      ),
                    ),
                ],
              ),
            ),
            Container(
              height: 3,
              color: AppColors.grayBackground,
            ),
          ],
        ),
      ),
    );
  }
}
