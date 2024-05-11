import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Fuature/home/presintaion/manager/feature_newest_books.dart/feature_newest_books_cubit.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/newest_books_view_items.dart';
import 'package:untitled1/core/widget/custom_error.dart';

class ListNewestBooksItems extends StatelessWidget {
  const ListNewestBooksItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureNewestBooksCubit, FeatureNewestBooksState>(
      builder: (context, state) {
        if (state is FeatureNewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books[0].items!.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: NewestBooksView(
                items: state.books[0].items![index],
              ),
            ),
          );
        } else if (state is FeatureNewestBooksFaliure) {
          return CustomWidgetError(errMesage: state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
