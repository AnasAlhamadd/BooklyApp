import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/custom_search_text_failed.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/search_listbooks_items.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/styles.dart';

class SearchBooksItemsViewBody extends StatelessWidget {
  const SearchBooksItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSearchTextFailed(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Resualt Search',
            style: Styles.styles30.copyWith(fontFamily: kFontfamily),
          ),
        ),
        const Expanded(
          child: SearchListBooksItems(),
        )
      ],
    );
  }
}