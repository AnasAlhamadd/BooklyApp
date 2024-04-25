import 'package:flutter/material.dart';
import 'package:untitled1/core/helper/app_assets.dart';

class CustomBookItems extends StatelessWidget {
  const CustomBookItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.red,
              image: const DecorationImage(
                image: AssetImage(AppAssets.ktest),
              ),
              borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}
