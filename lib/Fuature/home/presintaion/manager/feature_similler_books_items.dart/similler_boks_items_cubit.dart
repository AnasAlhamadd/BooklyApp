import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/Fuature/home/data/model/bookmodel/bookmodel.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo.dart';

part 'similler_boks_items_state.dart';

class SimillerBoksItemsCubit extends Cubit<SimillerBoksItemsState> {
  SimillerBoksItemsCubit(this.homeRepo) : super(SimillerBoksItemsInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimillerBoksItems({required String categore}) async {
    emit(SimillerBoksItemsLoading());
    var result = await homeRepo.fetchSimmilerBooks(categore: categore);
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
