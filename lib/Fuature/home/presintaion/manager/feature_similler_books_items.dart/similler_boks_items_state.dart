part of 'similler_boks_items_cubit.dart';

sealed class SimillerBoksItemsState extends Equatable {
  const SimillerBoksItemsState();

  @override
  List<Object> get props => [];
}

final class SimillerBoksItemsInitial extends SimillerBoksItemsState {}

final class SimillerBoksItemsLoading extends SimillerBoksItemsState {}

final class SimillerBoksItemsSuccess extends SimillerBoksItemsState {
  final List<Bookmodel> books;

  const SimillerBoksItemsSuccess({required this.books});
}

final class SimillerBoksItemsFaliure extends SimillerBoksItemsState {
  final String errMesage;

  const SimillerBoksItemsFaliure({required this.errMesage});
}
