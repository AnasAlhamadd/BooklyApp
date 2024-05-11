import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/item.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/custom_book_items.dart';
import 'package:untitled1/Fuature/home/presintaion/views/widget/customcountry_countpage.dart';
import 'package:untitled1/constant.dart';
import 'package:untitled1/core/helper/router.dart';
import 'package:untitled1/core/helper/styles.dart';

class SearchBooksView extends StatelessWidget {
  const SearchBooksView({super.key, required this.items});
  final Item items;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AppRouter.bookdetailes,
          extra: items,
        );
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookItems(
              imageUrl: items.volumeInfo.imageLinks.smallThumbnail,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      items.volumeInfo.title!,
                      style: Styles.styles24.copyWith(
                        fontFamily: kFontfamily,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    items.volumeInfo.authors?[0] ?? '',
                    style: Styles.styles16.copyWith(
                      fontFamily: kFontfamily,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style:
                              Styles.styles18.copyWith(fontFamily: kFontfamily),
                        ),
                        const Spacer(),
                        CustomCountryandPageCount(
                          countPage: items.volumeInfo.pageCount!,
                          country: items.accessInfo!.country!,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
