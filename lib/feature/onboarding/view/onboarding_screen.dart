import 'package:fishingmemory/feature/onboarding/cubit/onboarding_cubit.dart';
import 'package:fishingmemory/feature/onboarding/cubit/onboarding_state.dart';
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
  final PageController _pageController = PageController();
  int _currentPage = 0;

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
            _navigateToLoginScreen(context);
          } else if (state is OnboardingError) {
            _showErrorSnackbar(context, state.error);
          }
        },
        builder: (context, state) {
          return _buildOnboardingContent(context);
        },
      ),
    );
  }

  Widget _buildOnboardingContent(BuildContext context) {
    return Stack(
      children: [
        _pageView(),
        _pageIndicators(),
        _nextButton(context),
      ],
    );
  }

  Widget _pageView() {
    return PageView.builder(
      controller: _pageController,
      itemCount: onboardingData.length,
      onPageChanged: (int page) {
        setState(() {
          _currentPage = page;
        });
      },
      itemBuilder: (context, pageIndex) {
        final data = onboardingData[pageIndex];
        return _onboardingPage(data);
      },
    );
  }

  Widget _onboardingPage(OnboardingData data) {
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

  Widget _pageIndicators() {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(onboardingData.length, (index) {
          return GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              width: _currentPage == index ? 18.0 : 12.0,
              height: _currentPage == index ? 18.0 : 12.0,
              decoration: BoxDecoration(
                color: _currentPage == index ? AppColors.gray450 : AppColors.gray200,
                shape: BoxShape.circle,
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _nextButton(BuildContext context) {
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
          print("current: $_currentPage");
          if (_currentPage == onboardingData.length - 1) {
            context.read<OnboardingCubit>().writeFirstVisitor();
          } else {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
        child: Text(
          _currentPage == onboardingData.length - 1 ? AppStrings.started : AppStrings.next,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void _showErrorSnackbar(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(error)),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class OnboardingData {
  final String title;
  final String lottiePath;

  OnboardingData({required this.title, required this.lottiePath});
}
