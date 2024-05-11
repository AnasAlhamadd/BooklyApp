import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled1/Fuature/books/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/search/data/repo/search_repo.dart';
import 'package:untitled1/core/errors/faliure.dart';
import 'package:untitled1/core/services/api_services.dart';

class SearchRepoImp implements SearchRepo {
  final ApiServices services;

  const SearchRepoImp(this.services);

  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchSearchBooks(
      {required String title}) async {
    try {
      Map<String, dynamic> data = await services.get(
          endPoints: 'volumes?Filtering=free-ebooks&q=$title');
      List<Bookmodel> books = [];
      books.add(
        Bookmodel.fromJson(data),
      );

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFaliure.fromDioError(e));
      }
      return Left(
        ServerFaliure('Oops Please Try Agin'),
      );
    }
  }
}
