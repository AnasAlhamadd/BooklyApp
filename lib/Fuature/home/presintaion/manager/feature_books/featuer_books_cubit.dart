import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo.dart';

part 'featuer_books_state.dart';

class FeatuerBooksCubit extends Cubit<FeatuerBooksState> {
  FeatuerBooksCubit(this.homeRepo) : super(FeatuerBooksInitial());
  final HomeRepo homeRepo;
  featchFeatureBooks() async {
    emit(FeatuerBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((faliure) {
      emit(FeatuerBooksFaliure(faliure.errMesage));
    }, (books) {
      emit(FeatuerBooksSuccess(books));
    });
  }
}
