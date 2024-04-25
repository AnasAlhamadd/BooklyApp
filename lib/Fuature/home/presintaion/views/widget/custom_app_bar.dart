import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/core/helper/app_assets.dart';
import 'package:untitled1/core/helper/router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AppAssets.klogoPage,
          height: 40,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              context.push(AppRouter.searchbooks);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30,
            )),
      ],
    );
  }
}
