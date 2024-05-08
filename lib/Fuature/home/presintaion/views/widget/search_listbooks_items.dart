import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/newest_books_view_items.dart';

class SearchListBooksItems extends StatelessWidget {
  const SearchListBooksItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        // child: NewestBooksView(
        //   items: state,
        // ),
        child: Text('0'),
      ),
    );
  }
}
