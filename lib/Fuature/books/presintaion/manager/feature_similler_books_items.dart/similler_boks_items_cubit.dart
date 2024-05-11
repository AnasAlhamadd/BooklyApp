import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/Fuature/books/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/books/data/repo/books_repo.dart';

part 'similler_boks_items_state.dart';

class SimillerBoksItemsCubit extends Cubit<SimillerBoksItemsState> {
  SimillerBoksItemsCubit(this.homeRepo) : super(SimillerBoksItemsInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimillerBoksItems() async {
    emit(SimillerBoksItemsLoading());
    var result = await homeRepo.fetchSimmilerBooks();
    result.fold((faliure) {
      emit(
        SimillerBoksItemsFaliure(errMesage: faliure.errMesage),
      );
    }, (books) {
      emit(
        SimillerBoksItemsSuccess(books: books),
      );
    });
  }
}
