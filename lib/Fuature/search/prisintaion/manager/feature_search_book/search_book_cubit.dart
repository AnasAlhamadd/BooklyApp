import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo.dart';
import 'package:untitled1/Fuature/search/data/repo/search_repo.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String title}) async {
    emit(SearchBookLoading());
    var result = await searchRepo.fetchSearchBooks(title: title);
    result.fold((faliure) {
      emit(SearchBookFaliure(
        errMesage: faliure.errMesage,
      ));
    }, (book) {
      emit(SearchBookSuccess(books: book));
    });
  }
}
