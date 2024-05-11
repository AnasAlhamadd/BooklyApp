import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo.dart';
import 'package:untitled1/core/errors/faliure.dart';
import 'package:untitled1/core/services/api_services.dart';

class HomeRepoImplement implements HomeRepo {
  //! Define Services

  final ApiServices services;
  HomeRepoImplement(this.services);

  //! Featch Feature Books

  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchFeatureBooks() async {
    try {
      Map<String, dynamic> data = await services.get(
          endPoints: 'volumes?Filtering=free-ebooks&q=computer science');
      List<Bookmodel> books = [];
      books.add(
        Bookmodel.fromJson(data),
      );
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFaliure.fromDioError(e),
        );
      }
      return left(
        ServerFaliure('Oops Please Try Agin'),
      );
    }
  }

//! Featch Newast Books
  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchNewastBooks() async {
    try {
      Map<String, dynamic> data = await services.get(
          endPoints:
              'volumes?Filtering=free-ebooks&q=programming&Sorting=newest');

      List<Bookmodel> books = [];
      books.add(
        Bookmodel.fromJson(data),
      );
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(
        ServerFaliure('Oops Please Try Agin'),
      );
    }
  }

  @override
  Future<Either<Faliure, List<Bookmodel>>> fetchSimmilerBooks() async {
    try {
      Map<String, dynamic> data = await services.get(
          endPoints: 'volumes?q=programing&free-ebooks=true&Sorting=relevance');
      List<Bookmodel> books = [];
      books.add(
        Bookmodel.fromJson(data),
      );
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFaliure.fromDioError(e),
        );
      }
      return left(
        ServerFaliure('Oops Please Try Agin'),
      );
    }
  }
}
