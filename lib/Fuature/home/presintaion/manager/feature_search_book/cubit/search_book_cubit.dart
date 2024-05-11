import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.homeRepo) : super(SearchBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSearchBooks({required String title}) async {
    emit(SearchBookLoading());
    var result = await homeRepo.fetchSearchBooks(title: title);
    result.fold((faliure) {
      emit(SearchBookFaliure(
        errMesage: faliure.errMesage,
      ));
    }, (book) {
      emit(SearchBookSuccess(books: book));
    });
  }
}
