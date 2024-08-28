
import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/feature/history/view/history_screen.dart';
import 'package:fishingmemory/feature/home/home_screen.dart';
import 'package:fishingmemory/feature/mypage/view/mypage_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Widget> pages = const [
    HomeScreen(),
    HistoryScreen(),
    MyPageScreen(),
  ];
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {
          selectedIndex = tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          HistoryScreen(),
          MyPageScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          bottomNavigationItem(AppIcons.homeIcon, AppStrings.home, 0),
          bottomNavigationItem(AppIcons.historyIcon, AppStrings.history, 1),
          bottomNavigationItem(AppIcons.mypageIcon, AppStrings.mypage, 2),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.black,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
            tabController.animateTo(value);
          });
        },
      ),
    );
  }
  
  BottomNavigationBarItem bottomNavigationItem(String icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        width: 24,
        height: 24,
        color: selectedIndex == index ? AppColors.black : AppColors.gray200,
      ),
      label: label,
    );
  }
}