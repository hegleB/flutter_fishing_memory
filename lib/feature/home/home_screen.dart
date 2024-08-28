
import 'package:fishingmemory/core/resource/resource.dart';
import 'package:fishingmemory/feature/history/view/history_screen.dart';
import 'package:fishingmemory/feature/mypage/view/mypage_screen.dart';
import 'package:fishingmemory/feature/program_information/view/program_information_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("홈")
      )
    );
  }
}