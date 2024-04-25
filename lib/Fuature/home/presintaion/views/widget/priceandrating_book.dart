import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/styles.dart';

class CustomRatingBook extends StatelessWidget {
  const CustomRatingBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          '4.8',
          style: Styles.styles18.copyWith(fontFamily: kFontfamily),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          '(225)',
          style: Styles.styles18.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
