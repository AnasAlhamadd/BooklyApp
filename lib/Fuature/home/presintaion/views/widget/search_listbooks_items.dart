import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Fuature/home/presintaion/manager/feature_search_book/cubit/search_book_cubit.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/search_book_view.dart';
import 'package:untitled1/core/widget/custom_error.dart';

class SearchListBooksItems extends StatelessWidget {
  const SearchListBooksItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SearchBookFaliure) {
          return CustomWidgetError(errMesage: state.errMesage);
        } else if (state is SearchBookSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemCount: state.books[0].items!.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SearchBooksView(
                items: state.books[0].items![index],
              ),
            ),
          );
        } else {
          return const Center(child: Text('Now Search'));
        }
      },
    );
  }
}
