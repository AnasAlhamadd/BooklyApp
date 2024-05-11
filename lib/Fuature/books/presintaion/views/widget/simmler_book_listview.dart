import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Fuature/books/presintaion/manager/feature_similler_books_items.dart/similler_boks_items_cubit.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/custom_book_items.dart';
import 'package:untitled1/core/widget/custom_error.dart';

class SimmlerBookListView extends StatelessWidget {
  const SimmlerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillerBoksItemsCubit, SimillerBoksItemsState>(
      builder: (context, state) {
        if (state is SimillerBoksItemsSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: state.books[0].items!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookItems(
                imageUrl: state
                    .books[0].items![index].volumeInfo.imageLinks.thumbnail,
              ),
            ),
          );
        } else if (state is SimillerBoksItemsFaliure) {
          return CustomWidgetError(errMesage: state.errMesage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
