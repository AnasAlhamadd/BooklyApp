import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/Fuature/books/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/books/data/repo/books_repo.dart';

part 'feature_newest_books_state.dart';

class FeatureNewestBooksCubit extends Cubit<FeatureNewestBooksState> {
  FeatureNewestBooksCubit(this.homeRepo) : super(FeatureNewestBooksInitial());
  final HomeRepo homeRepo;

  void featchNewestBooks() async {
    emit(FeatureNewestBooksLoading());
    var result = await homeRepo.fetchNewastBooks();
    result.fold((faliure) {
      emit(FeatureNewestBooksFaliure(faliure.errMesage));
    }, (books) {
      emit(FeatureNewestBooksSuccess(books));
    });
  }
}
