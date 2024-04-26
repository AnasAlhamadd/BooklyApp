import 'package:dartz/dartz.dart';
import 'package:untitled1/Fuature/home/data/model/book_model/book_model.dart';
import 'package:untitled1/core/errors/faliure.dart';

abstract class HomeRepo {
  Either<Faliure, List<BookModel>> fetchFeatureBooks();
  Either<Faliure, List<BookModel>> fetchBestSellerBooks();
}
