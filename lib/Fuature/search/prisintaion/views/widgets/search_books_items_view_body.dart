import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/custom_search_text_failed.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/search_listbooks_items.dart';
import 'package:untitled1/Fuature/search/prisintaion/manager/feature_search_book/search_book_cubit.dart';

class SearchBooksItemsViewBody extends StatelessWidget {
  const SearchBooksItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextFailed(
          onSubmitted: (val) {
            BlocProvider.of<SearchBookCubit>(context)
                .fetchSearchBooks(title: val);
          },
        ),
        const Expanded(
          child: SearchListBooksItems(),
        )
      ],
    );
  }
}
