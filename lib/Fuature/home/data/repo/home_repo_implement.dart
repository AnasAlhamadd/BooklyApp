import 'package:dartz/dartz.dart';
import 'package:untitled1/Fuature/home/data/model/book_model/book_model.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo.dart';
import 'package:untitled1/core/errors/faliure.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Either<Faliure, List<BookModel>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Either<Faliure, List<BookModel>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
