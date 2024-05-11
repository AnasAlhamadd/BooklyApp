import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/search/prisintaion/views/widgets/search_books_items_view_body.dart';

class SearchBooksItemsView extends StatelessWidget {
  const SearchBooksItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchBooksItemsViewBody(),
      ),
    );
  }
}
