import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Fuature/books/data/model/bookmodel/item.dart';
import 'package:untitled1/Fuature/books/presintaion/manager/feature_similler_books_items.dart/similler_boks_items_cubit.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/book_detailes_view_app_bar.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/books_details_section.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/simmler_books_section.dart';
import 'package:untitled1/constant.dart';

class BookdetailesViewBody extends StatefulWidget {
  const BookdetailesViewBody({super.key, required this.item});
  final Item item;

  @override
  State<BookdetailesViewBody> createState() => _BookdetailesViewBodyState();
}

class _BookdetailesViewBodyState extends State<BookdetailesViewBody> {
  @override
  void initState() {
    BlocProvider.of<SimillerBoksItemsCubit>(context).fetchSimillerBoksItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const BookdetailesViewAppBar(),
                BooksDetailsSection(
                  item: widget.item,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 60,
                  ),
                ),
                const SmillerBooksSection(),
                const SizedBox(
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
