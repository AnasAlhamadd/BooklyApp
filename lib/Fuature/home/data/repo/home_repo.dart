import 'package:dartz/dartz.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/core/errors/faliure.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<Bookmodel>>> fetchFeatureBooks();
  Future<Either<Faliure, List<Bookmodel>>> fetchNewastBooks();
  Future<Either<Faliure, List<Bookmodel>>> fetchSimmilerBooks();
  Future<Either<Faliure, List<Bookmodel>>> fetchSearchBooks(
      {required String title});
}
