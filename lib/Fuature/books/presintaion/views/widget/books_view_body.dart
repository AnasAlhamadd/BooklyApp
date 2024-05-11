import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/custom_app_bar.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/feature_books_listitems.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/list_newest_books_viewitems.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/styles.dart';

class BooksViewBody extends StatelessWidget {
  const BooksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 25.0),
                child: CustomAppBar(),
              ),
              const SizedBox(
                height: kdefaultPadding,
              ),
              const FeatureBookListItems(),
              const SizedBox(
                height: kdefaultPadding,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Newest Books',
                  style: Styles.styles30.copyWith(
                    fontFamily: kFontfamily,
                  ),
                ),
              ),
              const SizedBox(
                height: kdefaultPadding,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: ListNewestBooksItems(),
          ),
        )
      ],
    );
  }
}
