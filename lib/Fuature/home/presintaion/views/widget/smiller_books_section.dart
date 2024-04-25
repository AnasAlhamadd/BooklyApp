import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/simmiler_book_listview.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/styles.dart';

class SmillerBooksSection extends StatelessWidget {
  const SmillerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also Like',
          style: Styles.styles24.copyWith(
            fontFamily: kFontfamily,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const SimmlerBookListView(),
      ],
    );
  }
}
