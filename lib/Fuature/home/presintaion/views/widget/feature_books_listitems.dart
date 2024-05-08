import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Fuature/home/presintaion/manager/feature_books/featuer_books_cubit.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/custom_book_items.dart';
import 'package:untitled1/core/widget/custom_error.dart';

class FeatureBookListItems extends StatelessWidget {
  const FeatureBookListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerBooksCubit, FeatuerBooksState>(
        builder: (context, state) {
      if (state is FeatuerBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            itemCount: state.books[0].items!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CustomBookItems(
                imageUrl: state.books[0].items![index].volumeInfo.imageLinks
                    .smallThumbnail),
          ),
        );
      } else if (state is FeatuerBooksFaliure) {
        return CustomWidgetError(errMesage: state.errMesage);
      }
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
