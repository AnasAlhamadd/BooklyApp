import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/styles.dart';

class CustomCountryandPageCount extends StatelessWidget {
  const CustomCountryandPageCount({
    super.key,
    required this.countPage,
    required this.country,
  });
  final int countPage;
  final String country;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          country,
          style: Styles.styles18.copyWith(fontFamily: kFontfamily),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          '($countPage)',
          style: Styles.styles18.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
