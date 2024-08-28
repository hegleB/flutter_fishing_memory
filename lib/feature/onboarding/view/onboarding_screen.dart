import 'package:fishingmemory/feature/onboarding/cubit/onboarding_cubit.dart';
import 'package:fishingmemory/feature/onboarding/cubit/onboarding_state.dart';
import 'package:fishingmemory/feature/permission/view/permission_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/feature/login/view/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;

  final List<OnboardingData> onboardingData = [
    OnboardingData(
      title: AppStrings.onboardingFirstTitle,
      lottiePath: 'assets/raws/onboarding_first_page.json',
    ),
    OnboardingData(
      title: AppStrings.onboardingSecondTitle,
      lottiePath: 'assets/raws/onboarding_second_page.json',
    ),
    OnboardingData(
      title: AppStrings.onboardingThirdTitle,
      lottiePath: 'assets/raws/onboarding_third_page.json',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingCompleted) {
            if (state.onboardingStateType == OnboardingStateType.permission) {
              navigateToPermissionScreen(context);
            } else if (state.onboardingStateType == OnboardingStateType.login) {
               navigateToLoginScreen(context); 
            }
          } else if (state is OnboardingError) {
            showErrorSnackbar(context, state.error);
          }
        },
        builder: (context, state) {
          return buildOnboardingContent(context);
        },
      ),
    );
  }

  Widget buildOnboardingContent(BuildContext context) {
    return Stack(
      children: [
        pageView(),
        pageIndicators(),
        nextButton(context),
      ],
    );
  }

  Widget pageView() {
    return PageView.builder(
      controller: pageController,
      itemCount: onboardingData.length,
      onPageChanged: (int page) {
        setState(() {
          currentPage = page;
        });
      },
      itemBuilder: (context, pageIndex) {
        final data = onboardingData[pageIndex];
        return onboardingPage(data);
      },
    );
  }

  Widget onboardingPage(OnboardingData data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            data.title,
            textAlign: TextAlign.center,
            style: AppStyles.displayLarge.copyWith(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: FutureBuilder(
            future: Future.delayed(Duration.zero),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Lottie.asset(
                  data.lottiePath,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  fit: BoxFit.contain,
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        )
      ],
    );
  }

  Widget pageIndicators() {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(onboardingData.length, (index) {
          return GestureDetector(
            onTap: () {
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: currentPage == index ? 18.0 : 12.0,
              height: currentPage == index ? 18.0 : 12.0,
              decoration: BoxDecoration(
                color: currentPage == index ? AppColors.gray450 : AppColors.gray200,
                shape: BoxShape.circle,
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget nextButton(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: () {
          print("current: $currentPage");
          if (currentPage == onboardingData.length - 1) {
            context.read<OnboardingCubit>().writeFirstVisitor();
          } else {
            pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        child: Text(
          currentPage == onboardingData.length - 1 ? AppStrings.started : AppStrings.next,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void navigateToLoginScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void navigateToPermissionScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const PermissionScreen()),
    );
  }

  void showErrorSnackbar(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(error)),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class OnboardingData {
  final String title;
  final String lottiePath;

  OnboardingData({required this.title, required this.lottiePath});
}
