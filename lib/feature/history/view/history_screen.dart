import 'package:fishingmemory/feature/create/view/memo_create_screen.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MemoCreateScreen()));
          },
          child: const Text("메모 생성"),
        ),
      ),
    );
  }
}
