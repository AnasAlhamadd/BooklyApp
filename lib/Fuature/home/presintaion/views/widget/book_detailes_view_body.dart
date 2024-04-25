import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/book_detailes_view_app_bar.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/books_details_section.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/simmler_books_section.dart';
import 'package:untitled1/constant.dart';

class BookdetailesViewBody extends StatelessWidget {
  const BookdetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                BookdetailesViewAppBar(),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 60,
                  ),
                ),
                SmillerBooksSection(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
