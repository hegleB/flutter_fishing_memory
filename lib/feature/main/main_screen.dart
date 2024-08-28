
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
  late TabController _tabController;
  final List<Widget> pages = const [
    HomeScreen(),
    HistoryScreen(),
    MyPageScreen(),
  ];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {
          _selectedIndex = _tabController.index;
        });
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          HistoryScreen(),
          MyPageScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _bottomNavigationItem(AppIcons.homeIcon, AppStrings.home, 0),
          _bottomNavigationItem(AppIcons.historyIcon, AppStrings.history, 1),
          _bottomNavigationItem(AppIcons.mypageIcon, AppStrings.mypage, 2),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.black,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
            _tabController.animateTo(value);
          });
        },
      ),
    );
  }
  
  BottomNavigationBarItem _bottomNavigationItem(String icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        width: 24,
        height: 24,
        color: _selectedIndex == index ? AppColors.black : AppColors.gray200,
      ),
      label: label,
    );
  }
}