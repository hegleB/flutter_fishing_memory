import 'package:fishingmemory/core/resource/resource.dart';
import 'package:flutter/material.dart';

class CenterCircularProgressIndicator extends StatelessWidget {
  final Color color;

  const CenterCircularProgressIndicator(
      {super.key, this.color = AppColors.black});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
