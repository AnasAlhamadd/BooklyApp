import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/books_view_body.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BooksViewBody(),
      ),
    );
  }
}
