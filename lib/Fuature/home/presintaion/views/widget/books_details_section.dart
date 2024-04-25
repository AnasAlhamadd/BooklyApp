import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/book_items.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/priceandrating_book.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/styles.dart';
import 'package:untitled1/core/widget/custom_button.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: const CustomBookItems(),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: Text(
            "The Jungle Book",
            style: Styles.styles33,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Opacity(
            opacity: 0.7,
            child: Text(
              'Rudiard kilping',
              style: Styles.styles24.copyWith(
                fontFamily: kFontfamily,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        const CustomRatingBook(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: BookAction(
                  onPressed: () {},
                  colorTextButton: Colors.black,
                  backgroundColor: Colors.white,
                  outlineInputBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  )),
                  textButton: '19.99',
                ),
              ),
              Expanded(
                child: BookAction(
                  onPressed: () {},
                  colorTextButton: Colors.white,
                  backgroundColor: const Color(0xffEf8262),
                  outlineInputBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  )),
                  textButton: 'Free Privew',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
