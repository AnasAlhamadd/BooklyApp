import 'package:flutter/material.dart';
import 'package:untitled1/Fuature/books/data/model/bookmodel/item.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/custom_book_items.dart';
import 'package:untitled1/Fuature/books/presintaion/views/widget/customcountry_countpage.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/functions/custom_lunsh_url.dart';
import 'package:untitled1/core/helper/styles.dart';
import 'package:untitled1/core/widget/custom_button.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2),
          child: CustomBookItems(
              imageUrl: item.volumeInfo.imageLinks.smallThumbnail),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
          child: Text(
            item.volumeInfo.title!,
            style: Styles.styles33.copyWith(
                // overflow: TextOverflow.ellipsis,
                ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Opacity(
            opacity: 0.7,
            child: Text(
              item.volumeInfo.authors?[0] ?? '',
              style: Styles.styles24.copyWith(
                fontFamily: kFontfamily,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        CustomCountryandPageCount(
          countPage: item.volumeInfo.pageCount ?? 0,
          country: item.accessInfo!.country!,
        ),
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
                  textButton: 'Free',
                ),
              ),
              Expanded(
                child: BookAction(
                  onPressed: () {
                    customLunshUrl(context, item.volumeInfo.previewLink);
                  },
                  colorTextButton: Colors.white,
                  backgroundColor: const Color(0xffEf8262),
                  outlineInputBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  )),
                  textButton: getText(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String getText() {
    if (item.volumeInfo.previewLink != null) {
      return 'Preview';
    } else {
      return 'Not Available';
    }
  }
}
