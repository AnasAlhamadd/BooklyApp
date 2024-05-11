import 'package:dartz/dartz.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/core/errors/faliure.dart';

abstract class SearchRepo {
  Future<Either<Faliure, List<Bookmodel>>> fetchSearchBooks(
      {required String title});
}
